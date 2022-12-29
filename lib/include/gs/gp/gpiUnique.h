#ifndef _GPIUNIQUE_H_
#define _GPIUNIQUE_H_

#include "gpi.h"

GPResult gpiRegisterUniqueNick(GPConnection * connection, const char uniquenick[GP_UNIQUENICK_LEN], const char cdkey[GP_CDKEY_LEN], GPEnum blocking, GPCallback callback, void * param);
GPResult gpiProcessRegisterUniqueNick(GPConnection * connection, GPIOperation * operation, const char * input);

#endif
