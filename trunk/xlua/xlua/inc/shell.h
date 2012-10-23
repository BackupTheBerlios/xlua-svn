// eLua shell 

#ifndef __SHELL_H__
#define __SHELL_H__

#define SHELL_WELCOMEMSG    "\nxLua %s  Copyright (C) 2007-2010 www.eluaproject.org & www.infineon.com\n"
#define SHELL_PROMPT        "xLua# "
#define SHELL_ERRMSG        "Invalid command, type 'help' for help\n"
#define SHELL_MAXSIZE       50
#define SHELL_MAX_LUA_ARGS  8

int shell_init();
void shell_start();

#endif // #ifndef __SHELL_H__
