# x64-syscall
x64 syscall caller in C++.

Example usage:

```cpp
ObjectAttributes.Length = sizeof( OBJECT_ATTRIBUTES );
ClientId.UniqueProcess	= HANDLE( 1000 ); // PID

// NtOpenProcess
Syscall( 0x26, &Handle, PROCESS_TERMINATE, &ObjectAttributes, &ClientId );

// NtTerminateProcess
Syscall( 0x2C, Handle );

```