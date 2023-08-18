#ifndef NITROWIFI_SOC_ERRCODE_H_
#define NITROWIFI_SOC_ERRCODE_H_

#ifdef __cplusplus

extern "C" {
#endif

#define SOC_E2BIG (-1)
#define SOC_EACCES (-2)
#define SOC_EADDRINUSE (-3)
#define SOC_EADDRNOTAVAIL (-4)
#define SOC_EAFNOSUPPORT (-5)
#define SOC_EAGAIN (-6)
#define SOC_EALREADY (-7)
#define SOC_EBADF (-8)
#define SOC_EBADMSG (-9)
#define SOC_EBUSY (-10)
#define SOC_ECANCELED (-11)
#define SOC_ECHILD (-12)
#define SOC_ECONNABORTED (-13)
#define SOC_ECONNREFUSED (-14)
#define SOC_ECONNRESET (-15)
#define SOC_EDEADLK (-16)
#define SOC_EDESTADDRREQ (-17)
#define SOC_EDOM (-18)
#define SOC_EDQUOT (-19)
#define SOC_EEXIST (-20)
#define SOC_EFAULT (-21)
#define SOC_EFBIG (-22)
#define SOC_EHOSTUNREACH (-23)
#define SOC_EIDRM (-24)
#define SOC_EILSEQ (-25)
#define SOC_EINPROGRESS (-26)
#define SOC_EINTR (-27)
#define SOC_EINVAL (-28)
#define SOC_EIO (-29)
#define SOC_EISCONN (-30)
#define SOC_EISDIR (-31)
#define SOC_ELOOP (-32)
#define SOC_EMFILE (-33)
#define SOC_EMLINK (-34)
#define SOC_EMSGSIZE (-35)
#define SOC_EMULTIHOP (-36)
#define SOC_ENAMETOOLONG (-37)
#define SOC_ENETDOWN (-38)
#define SOC_ENETRESET (-39)
#define SOC_ENETUNREACH (-40)
#define SOC_ENFILE (-41)
#define SOC_ENOBUFS (-42)
#define SOC_ENODATA (-43)
#define SOC_ENODEV (-44)
#define SOC_ENOENT (-45)
#define SOC_ENOEXEC (-46)
#define SOC_ENOLCK (-47)
#define SOC_ENOLINK (-48)
#define SOC_ENOMEM (-49)
#define SOC_ENOMSG (-50)
#define SOC_ENOPROTOOPT (-51)
#define SOC_ENOSPC (-52)
#define SOC_ENOSR (-53)
#define SOC_ENOSTR (-54)
#define SOC_ENOSYS (-55)
#define SOC_ENOTCONN (-56)
#define SOC_ENOTDIR (-57)
#define SOC_ENOTEMPTY (-58)
#define SOC_ENOTSOCK (-59)
#define SOC_ENOTSUP (-60)
#define SOC_ENOTTY (-61)
#define SOC_ENXIO (-62)
#define SOC_EOPNOTSUPP (-63)
#define SOC_EOVERFLOW (-64)
#define SOC_EPERM (-65)
#define SOC_EPIPE (-66)
#define SOC_EPROTO (-67)
#define SOC_EPROTONOSUPPORT (-68)
#define SOC_EPROTOTYPE (-69)
#define SOC_ERANGE (-70)
#define SOC_EROFS (-71)
#define SOC_ESPIPE (-72)
#define SOC_ESRCH (-73)
#define SOC_ESTALE (-74)
#define SOC_ETIME (-75)
#define SOC_ETIMEDOUT (-76)
#define SOC_ETXTBSY (-77)
#define SOC_EWOULDBLOCK SOC_EAGAIN
#define SOC_EXDEV (-78)

#define SOC_POLLRDNORM 0x0001
#define SOC_POLLRDBAND 0x0002
#define SOC_POLLPRI 0x0004
#define SOC_POLLWRNORM 0x0008
#define SOC_POLLWRBAND 0x0010
#define SOC_POLLERR 0x0020
#define SOC_POLLHUP 0x0040
#define SOC_POLLNVAL 0x0080
#define SOC_POLLIN (SOC_POLLRDNORM | SOC_POLLRDBAND)
#define SOC_POLLOUT SOC_POLLWRNORM
#define SOC_INFTIM (-1)

#ifdef __cplusplus
}
#endif

#endif
