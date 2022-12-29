#ifndef __GHTTPENCRYPTION_H__
#define __GHTTPENCRYPTION_H__

struct GHIEncryptor;
struct GHIConnection;

typedef enum {
    GHIEncryptionMethod_None,
    GHIEncryptionMethod_Encrypt,
    GHIEncryptionMethod_Decrypt
} GHIEncryptionMethod;

typedef enum {
    GHIEncryptionResult_None,
    GHIEncryptionResult_Success,
    GHIEncryptionResult_BufferTooSmall,
    GHIEncryptionResult_Error
} GHIEncryptionResult;

typedef GHIEncryptionResult (* GHTTPEncryptorInitFunc)   (struct GHIConnection * theConnection, struct GHIEncryptor * theEncryptor);
typedef GHIEncryptionResult (* GHTTPEncryptorCleanupFunc)(struct GHIConnection * theConnection, struct GHIEncryptor * theEncryptor);
typedef GHIEncryptionResult (* GHTTPEncryptorEncryptFunc)(struct GHIConnection * theConnection, struct GHIEncryptor * theEncryptor, const char * thePlainTextBuffer, int * thePlainTextLength, char * theEncryptedBuffer, int * theEncryptedLength);
typedef GHIEncryptionResult (* GHTTPEncryptorDecryptFunc)(struct GHIConnection * theConnection, struct GHIEncryptor * theEncryptor, const char * theEncryptedBuffer, int * theEncryptedLength, char * theDecryptedBuffer, int * theDecryptedLength);

typedef struct GHIEncryptor {
    void * mInterface;
    GHTTPEncryptionEngine mEngine;
    GHTTPBool mInitialized;
    GHTTPBool mSessionEstablished;
    GHTTPEncryptorInitFunc mInitFunc;
    GHTTPEncryptorCleanupFunc mCleanupFunc;
    GHTTPEncryptorEncryptFunc mEncryptFunc;
    GHTTPEncryptorDecryptFunc mDecryptFunc;
} GHIEncryptor;

#ifdef MATRIXSSL
GHIEncryptionResult ghttpEncryptorSslInitFunc(struct GHIConnection * connection, struct GHIEncryptor * theEncryptor);
GHIEncryptionResult ghttpEncryptorSslCleanupFunc(struct GHIConnection * connection, struct GHIEncryptor * theEncryptor);
GHIEncryptionResult ghttpEncryptorSslEncryptFunc(struct GHIConnection * connection, struct GHIEncryptor * theEncryptor, const char * thePlainTextBuffer, int * thePlainTextLength, char * theEncryptedBuffer, int * theEncryptedLength);
GHIEncryptionResult ghttpEncryptorSslDecryptFunc(struct GHIConnection * connection, struct GHIEncryptor * theEncryptor, const char * theEncryptedBuffer, int * theEncryptedLength, char * theDecryptedBuffer, int * theDecryptedLength);
#endif

#endif
