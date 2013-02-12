
#include <DAVE3.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include "type.h"
#include "devman.h"
#include "platform.h"
#include "romfs.h"
#include "xmodem.h"
#include "shell.h"
#include "lua.h"
#include "lauxlib.h"
#include "lualib.h"
#include "term.h"
#include "platform_conf.h"

#ifdef ELUA_SIMULATOR
#include "hostif.h"
#endif

/* Validate eLua configuration options */
#include "validate.h"

#include "mmcfs.h"
#include "romfs.h"
#include "semifs.h"

#include "LIBS.h"

/* File System Object declared to be used for SD card */
FATFS myfsObject;

// Define here your autorun/boot files, 
// in the order you want eLua to search for them
char *boot_order[] = {
#if defined(BUILD_MMCFS)
  "/mmc/autorun.lua",
  "/mmc/autorun.lc",
#endif
#if defined(BUILD_ROMFS)
  "/rom/autorun.lua",
  "/rom/autorun.lc",
#endif
};

extern char etext[];

/* Main thread Id */
//osThreadId MainThreadId;

FIL fptr;

/*****************************************************************************/
//  Program entry point
void LUA001_Task( void const *argument )
{
  int i;
  FILE* fp;

  /* Initialize platform first */
  if( platform_init() != PLATFORM_OK )
  {
    /* This should never happen */
    while(1);
  }
  // Initialize device manager
  dm_init();

  dm_register( mmcfs_init() );

  // Search for autorun files in the defined order and execute the 1st if found
  for( i = 0; i < sizeof( boot_order ) / sizeof( *boot_order ); i++ )
  {
    if( ( fp = fopen( boot_order[ i ], "r" ) ) != NULL )
    {
      fclose( fp );
      char* lua_argv[] = { "lua", boot_order[i], NULL };
      lua_main( 2, lua_argv );
      break; // autoruns only the first found
    }
  }

  // Run the shell
  if( shell_init() == 0 )
  {
    // Start Lua directly
    char* lua_argv[] = { "lua", NULL };
    lua_main( 1, lua_argv );
  }
  else
    shell_start();

#ifdef ELUA_SIMULATOR
  hostif_exit(0);
  return 0;
#else
  while( 1 );
#endif
}

