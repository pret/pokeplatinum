#include <arith.h>
#include <limits.h>
#include <stdlib.h>

int _MSL_CDECL (abs)(int n)
{
    if (n < 0) {
        return (-n);
    } else {
        return (n);
    }
}

long _MSL_CDECL (labs)(long n)
{
    if (n < 0) {
        return (-n);
    } else {
        return (n);
    }
}

#if (_MSL_C99 || defined(__cplusplus))
#if _MSL_LONGLONG
long long _MSL_CDECL (llabs)(long long n)
{
    if (n < 0) {
        return (-n);
    } else {
        return (n);
    }
}
#endif
#endif

div_t _MSL_CDECL div (int numerator, int denominator)
{
    int n_sign, d_sign;
    div_t value;

    n_sign = 1;
    d_sign = 1;

    if (numerator < 0) {
        numerator = -numerator;
        n_sign = -1;
    }

    if (denominator < 0) {
        denominator = -denominator;
        d_sign = -1;
    }

    value.quot = (numerator / denominator) * (n_sign * d_sign);
    value.rem = (numerator * n_sign) - (value.quot * denominator * d_sign);

    return (value);
}

ldiv_t _MSL_CDECL ldiv (long numerator, long denominator)
{
    long n_sign, d_sign;
    ldiv_t value;

    n_sign = 1;
    d_sign = 1;

    if (numerator < 0) {
        numerator = -numerator;
        n_sign = -1;
    }

    if (denominator < 0) {
        denominator = -denominator;
        d_sign = -1;
    }

    value.quot = (numerator / denominator) * (n_sign * d_sign);
    value.rem = (numerator * n_sign) - (value.quot * denominator * d_sign);

    return (value);
}

#if (_MSL_C99 || defined(__cplusplus))
#if _MSL_LONGLONG
lldiv_t _MSL_CDECL lldiv (long long numerator, long long denominator)
{
    long long n_sign, d_sign;
    lldiv_t value;

    n_sign = 1;
    d_sign = 1;

    if (numerator < 0) {
        numerator = -numerator;
        n_sign = -1;
    }

    if (denominator < 0) {
        denominator = -denominator;
        d_sign = -1;
    }

    value.quot = (numerator / denominator) * (n_sign * d_sign);
    value.rem = (numerator * n_sign) - (value.quot * denominator * d_sign);

    return (value);
}
#endif
#endif

int _MSL_CDECL __msl_add (int * x, int y)
{
    int _x = *x;

    if (y < 0) {
        if (_x < 0 && y < INT_MIN - _x) {
            return (0);
        }
    } else
    if (_x > 0 && y > INT_MAX - _x) {
        return (0);
    }

    *x = _x + y;

    return (1);
}

int _MSL_CDECL __msl_ladd (long * x, long y)
{
    long _x = *x;

    if (y < 0) {
        if (_x < 0 && y < LONG_MIN - _x) {
            return (0);
        }
    } else
    if (_x > 0 && y > LONG_MAX - _x) {
        return (0);
    }

    *x = _x + y;

    return (1);
}

#if (_MSL_LONGLONG && _MSL_C99)
int _MSL_CDECL __lladd (long long * x, long long y)
{
    long long _x = *x;

    if (y < 0) {
        if (_x < 0 && y < LLONG_MIN - _x) {
            return (0);
        }
    } else
    if (_x > 0 && y > LLONG_MAX - _x) {
        return (0);
    }

    *x = _x + y;

    return (1);
}
#endif

int _MSL_CDECL __msl_mul (int * x, int y)
{
    int _x = *x;
    int sign;

    sign = ((_x < 0) ^ (y < 0)) ? -1 : 1;

    if (_x < 0) {
        _x = -_x;
    }
    if (y < 0) {
        y = -y;
    }

    if (_x > INT_MAX / y) {
        return (0);
    }

    *x = _x * y * sign;

    return (1);
}

int _MSL_CDECL __msl_lmul (long * x, long y)
{
    long _x = *x;
    int sign;

    sign = ((_x < 0) ^ (y < 0)) ? -1 : 1;

    if (_x < 0) {
        _x = -_x;
    }
    if (y < 0) {
        y = -y;
    }

    if (_x > LONG_MAX / y) {
        return (0);
    }

    *x = _x * y * sign;

    return (1);
}

#if (_MSL_LONGLONG && _MSL_C99)
int _MSL_CDECL __llmul (long long * x, long long y)
{
    long long _x = *x;
    int sign;

    sign = ((_x < 0) ^ (y < 0)) ? -1 : 1;

    if (_x < 0) {
        _x = -_x;
    }
    if (y < 0) {
        y = -y;
    }

    if (_x > LLONG_MAX / y) {
        return (0);
    }

    *x = _x * y * sign;

    return (1);
}
#endif

div_t _MSL_CDECL __msl_div (int x, int y)
{
    int q, r, x_sign, y_sign, q_sign;
    div_t result;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    result.quot = q;
    result.rem = r;

    return (result);
}

ldiv_t _MSL_CDECL __msl_ldiv (long x, long y)
{
    long q, r, x_sign, y_sign, q_sign;
    ldiv_t result;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    result.quot = q;
    result.rem = r;

    return (result);
}

#if _MSL_C99
#if _MSL_LONGLONG
lldiv_t _MSL_CDECL __lldiv (long long x, long long y)
{
    long long q, r, x_sign, y_sign, q_sign;
    lldiv_t result;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    result.quot = q;
    result.rem = r;

    return (result);
}
#endif
#endif

int _MSL_CDECL __msl_mod (int x, int y)
{
    int q, r, x_sign, y_sign, q_sign;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    return (r);
}

long _MSL_CDECL __msl_lmod (long x, long y)
{
    long q, r, x_sign, y_sign, q_sign;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    return (r);
}

#if _MSL_LONGLONG
long long _MSL_CDECL __llmod (long long x, long long y)
{
    long long q, r, x_sign, y_sign, q_sign;

    x_sign = 1;
    y_sign = 1;

    if (x < 0) {
        x = -x;
        x_sign = -1;
    }

    if (y < 0) {
        y = -y;
        y_sign = -1;
    }

    q_sign = x_sign * y_sign;

    q = (x / y) * q_sign;
    r = (x * x_sign) - (q * y * y_sign);

    if (r && q_sign < 0) {
        q -= 1;
        r += y * y_sign;
    }

    return (r);
}
#endif
