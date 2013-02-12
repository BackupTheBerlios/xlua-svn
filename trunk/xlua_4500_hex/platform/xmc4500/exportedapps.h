
#ifndef EXPORTED_APPS_H_
#define EXPORTED_APPS_H_

#define MOD_DECLARE(modname)\
    LUALIB_API int ( luaopen_##modname )(lua_State *L )

#define ROM_EXPORT_MODULE(modname) _ROM( #modname, luaopen_##modname, modname##_map )
//*********************************************************
// Define all DAVE3 Apps here.

// Define module names like this and declare
// it subsequently.

MOD_DECLARE(IO002);          // declare
MOD_DECLARE(TMPS001);          // declare

#define EXPORTED_APPS_ROM\
	ROM_EXPORT_MODULE(IO002)\
	ROM_EXPORT_MODULE(TMPS001)

#endif /* EXPORTED_APPS_H_ */
