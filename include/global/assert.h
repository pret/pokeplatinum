#ifndef POKEPLATINUM_ASSERT_H
#define POKEPLATINUM_ASSERT_H

/*
 * Assert statements. If the expression evaluates false,
 * the software will terminate.
 *
 * Pass NO_GF_ASSERT=1 to make to remove these.
 */
#ifdef PM_KEEP_ASSERTS
#define GF_ASSERT(expr) ((expr) ? (void)0 : ErrorHandling_AssertFail())
#else
#define GF_ASSERT(...) ((void)0)
#endif // PM_KEEP_ASSERTS

/*
 * void ErrorHandling_AssertFail(void)
 *
 * Called when an assertion fails.
 * Do not use this directly.
 * Instead, use the GF_ASSERT macro defined above.
 */
void ErrorHandling_AssertFail(void);

#endif // POKEPLATINUM_ASSERT_H
