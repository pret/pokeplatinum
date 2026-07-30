#ifndef ILOBBY_LOBBYBASE_H
#define ILOBBY_LOBBYBASE_H

typedef void (*UnkFuncPtr_0225B6E4)();

#include <dwc.h>
#include <functional>
#include <limits>

class UnkClass_ov66_0225B6E4 {
protected:
    UnkClass_ov66_0225B6E4()
    {
    }

    ~UnkClass_ov66_0225B6E4()
    {
    }

public:
    static void *operator new(std::size_t param0) throw();

    static void operator delete(void *param0)
    {
        if (param0 != NULL) {
            DWC_Free(DWC_ALLOCTYPE_AUTH, param0, 0);
        }
    }

private:
    static UnkFuncPtr_0225B6E4 Unk_ov66_0225B6E4;

public:
    static UnkFuncPtr_0225B6E4 UnkClass_ov66_0225B6E4_InlineFunc0(UnkFuncPtr_0225B6E4 param0) throw()
    {
        UnkFuncPtr_0225B6E4 v0 = Unk_ov66_0225B6E4;
        Unk_ov66_0225B6E4 = param0;
        return v0;
    }

public:
    template <class T>
    struct UnkClass_ov66_0225B6E4_BinaryFunc : std::binary_function<T *, T *, bool> {
        bool operator()(const T *param0, const T *param1) const
        {
            return *param0 < *param1;
        }
    };
};

template <class T>
class PPW_Allocator {
public:
    typedef T value_type;
    typedef T *pointer;
    typedef const T *const_pointer;
    typedef T &reference;
    typedef const T &const_reference;
    typedef std::size_t size_type;
    typedef std::ptrdiff_t difference_type;

    template <class U>
    struct rebind {
        typedef PPW_Allocator<U> other;
    };

    PPW_Allocator() throw()
    {
    }

    PPW_Allocator(const PPW_Allocator &) throw()
    {
    }

    template <class U>
    PPW_Allocator(const PPW_Allocator<U> &) throw()
    {
    }

    ~PPW_Allocator() throw()
    {
    }

    size_type max_size() const throw()
    {
        return std::numeric_limits<std::size_t>::max() / sizeof(T);
    }

    pointer allocate(size_type param0, const void *param1 = 0)
    {
        return (pointer)(UnkClass_ov66_0225B6E4::operator new(param0 * sizeof(T)));
    }

    void construct(pointer param0, const T &param1)
    {
        new ((void *)param0) T(param1);
    }

    void destroy(pointer param0)
    {
        param0->~T();
    }

    void deallocate(pointer param0, size_type param1)
    {
        UnkClass_ov66_0225B6E4::operator delete((void *)param0);
    }
};

#endif // ILOBBY_LOBBYBASE_H
