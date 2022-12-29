#ifndef NITROWIFI_SSL_H_
#define NITROWIFI_SSL_H_

#ifdef __cplusplus

extern "C" {
#endif

typedef struct {
    u32 state[4];
    u32 count[2];
    u8 buffer[64];
} CPSMd5Ctx;

extern void CPSi_md5_init(CPSMd5Ctx *);
extern void CPSi_md5_calc(CPSMd5Ctx *, void *, int);
extern void CPSi_md5_result(CPSMd5Ctx *, u8 *);

typedef struct {
    u32 state[5];
    u32 count[2];
    u8 buffer[64];
} CPSSha1Ctx;

extern void CPSi_sha1_init(CPSSha1Ctx *);
extern void CPSi_sha1_calc(CPSSha1Ctx *, void *, int);
extern void CPSi_sha1_result(CPSSha1Ctx *, u8 *);
extern void CPSi_sha1_result_prng(CPSSha1Ctx *, u8 *);

typedef struct {
    u8 x;
    u8 y;
    u8 m[256];
    u16 padding;
} CPSRc4Ctx;

extern void CPSi_rc4_init(CPSRc4Ctx *, u8 *, int);
extern void CPSi_rc4_crypt(CPSRc4Ctx *, u8 *, int);

extern void CPSi_big_add(u16 *, u16 *, u16 *, int);
extern void CPSi_big_sub(u16 *, u16 *, u16 *, int);
extern void CPSi_big_mult(u16 *, u16 *, u16 *, int);
extern void CPSi_big_div(u16 *, u16 *, u16 *, u16 *, int, u16 *);
extern void CPSi_big_power(u16 *, u16 *, u16 *, int, u16 *);
extern void CPSi_big_montpower(u16 *, u16 *, u16 *, int, u16 *);
extern void CPSi_big_negate(u16 *, int);
extern int CPSi_big_sign(u16 *, int);
extern void CPSi_big_from_char(u16 *, u8 *, int, int);
extern void CPSi_char_from_big(u8 *, u16 *, int, int);

typedef struct {
    char * dn;
    int modulus_len;
    u8 * modulus;
    int exponent_len;
    u8 * exponent;
} CPSCaInfo;

typedef struct {
    int certificate_len;
    u8 * certificate;
} CPSCertificate;

typedef struct {
    int modulus_len;
    u8 * modulus;
    int prime1_len;
    u8 * prime1;
    int prime2_len;
    u8 * prime2;
    int exponent1_len;
    u8 * exponent1;
    int exponent2_len;
    u8 * exponent2;
    int coefficient_len;
    u8 * coefficient;
} CPSPrivateKey;

extern void CPS_SetRootCa(CPSCaInfo **, int);
extern void CPS_SetMyCert(CPSCertificate *, CPSPrivateKey *);

#define CPS_CERT_OUTOFDATE 0x8000
#define CPS_CERT_BADSERVER 0x4000

#define CPS_CERT_ERRMASK 0x00ff

enum {
    CPS_CERT_NOERROR                = 0,
    CPS_CERT_NOROOTCA,
    CPS_CERT_BADSIGNATURE,
    CPS_CERT_UNKNOWN_SIGALGORITHM,
    CPS_CERT_UNKNOWN_PUBKEYALGORITHM
};

typedef struct {
    u8 sessionID[32];
    u8 master_secret[48];
    u32 when;
    CPSInAddr ip;
    u16 port;
    u8 valid;
    u8 padding;
} CPSSslSession;

typedef union {
    CPSRc4Ctx rc4_ctx;
} CPSCipherCtx;

#define CPS_MAX_DN_LEN 255
#define CPS_MAX_CN_LEN 79
#define CPS_MAX_RSA_LEN (2048 / 8)
#define CPS_MAX_RSA_PUBLICEXPONENT_LEN (64 / 8)

typedef struct _CPSSslConnection {
    u8 master_secret[48];
    u8 session_cached;
    u8 reuse_session;
    u16 method;
    u8 client_random[32];
    u8 server_random[32];
    union {
        u8 sessionID[32];
        u8 key_block[2 * (20 + 16 + 0)];
    } common1;
    u8 * send_mac;
    u8 * send_key;
    u8 * send_iv;
    CPSCipherCtx send_cipher;
    u8 send_seq[8];
    u8 * rcv_mac;
    u8 * rcv_key;
    u8 * rcv_iv;
    CPSCipherCtx rcv_cipher;
    u8 rcv_seq[8];
    CPSSha1Ctx sha1_hash;
    CPSSha1Ctx sha1_hash_tmp;
    CPSMd5Ctx md5_hash;
    CPSMd5Ctx md5_hash_tmp;
    u8 server;
    u8 state;
    u8 inbuf_decrypted;
    u8 padding2;

    int sig_algorithm;
    int pub_algorithm;
    u8 * hash_start;
    u8 * hash_end;
    u8 hash_val[20];
    int hash_len;
    CPSCaInfo midca_info;
    u8 modulus[CPS_MAX_RSA_LEN];
    u32 modulus_len;
    u8 exponent[CPS_MAX_RSA_PUBLICEXPONENT_LEN];

    int exponent_len;
    u8 * signature;
    int signature_len;
    u8 seen_validity;
    u8 seen_pub_algorithm;
    u8 seen_attr;
    u8 date_ok;
    char issuer[CPS_MAX_DN_LEN + 1];
    char subject[CPS_MAX_DN_LEN + 1];
    char cn[CPS_MAX_CN_LEN + 1];
    char * server_name;
    u8 * cert;
    int certlen;
    u32 cur_date;
    int (* auth_callback)(int, struct _CPSSslConnection *, int);
    CPSCaInfo ** ca_info;
    int ca_builtins;
    CPSPrivateKey * my_key;
    CPSCertificate * my_certificate;

    u8 * inbuf;
    long inbuf_len;
    long inbuf_pnt;
} CPSSslConnection;

extern void CPS_SslAddRandomSeed(void *, u32);

#define MI_CpuCopy8_inverse(d, s, n) MI_CpuCopy8(s, d, n)

#ifdef __cplusplus
}
#endif

#endif
