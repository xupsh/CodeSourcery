#ifndef _MDILOAD_H_
#define _MDILOAD_H_

#ifndef _WIN32
typedef void *HMODULE;
#endif

#ifdef __cplusplus
extern "C" {
#endif

extern char dll_path[];


int MDIInit(char *dllpathandname, HMODULE *handle);
void MDIFree( HMODULE handle);

#ifdef __cplusplus
}
#endif

#endif /* _MDILOAD_H_ */
