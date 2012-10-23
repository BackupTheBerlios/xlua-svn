
#ifndef EXPORTED_APPS_H_
#define EXPORTED_APPS_H_

#define MOD_DECLARE(modname)\
    LUALIB_API int ( luaopen_##modname )(lua_State *L )

//*********************************************************
// Define all DAVE3 Apps here.

// Define module names like this and declare
// it subsequently.
#define AUXLIB_IO002 "IO002" // module name
MOD_DECLARE(IO002);          // declare

#define EXPORTED_APPS_ROM\
    _ROM( AUXLIB_IO002, luaopen_IO002, IO002_map )

#endif /* EXPORTED_APPS_H_ */
