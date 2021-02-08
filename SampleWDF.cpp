#include "ntddk.h"
UNICODE_STRING DeviceName = RTL_CONSTANT_STRING(L"\\Device\\mydevice123");
PDEVICE_OBJECT SymLinkName = RTL_CONSTANT_STRING(L"\\Device\\mydeviceSymlink123");
PDEVICE_OBJECT DeviceObject = NULL;
VOID Unload(PDRIVER_OBJECT DriverObject)
{
  IoDeleteSymbolicLink(&SymlinkName);
  IoDeleteDevice(DeviceObject);
  KdPrint(("Driver Unload is iodelete Sym and device"));
}
NTSTATUS Passthru(PDRIVER_OBJECT DeviceObject, PIPR irp)
{
    PIO_STACK_LOCATION irpsp = IoGetIrpStackLocation(irp);
    NTSTATUS status = STATUS_SUCCESS;
}
NTSTATUS DriverEntry(PDRIVER_OBJECT DeviceObject, PUNICODE_STRING RegistryPath)
{
    NTSTATUS status;
    int i ;
    DriverObject->DriverUnload = Unload
    status = IoCreateDevice(DriverObject,0,&DeviceName;FILE_DEVICE_UNKNOWN_SECURE_OPEN, FALSE,);
    if(!NT_SUCCESS(status)){
        Kdprint((" Create Device Unsuccess  \r\n"));
    return status;
    }
    status = IoCreateSymbolicDevice(&SymLink,&SymName)
    if(!NT_STATUS(status)){
        Kdprint(("Create SymLink Device Unsuccess\r\n"));
    return status;}
    }
    for(i < 0 ; IRP_MJ_MAXIMUM_FUNCTION; i++){
    //DriverObject->MajorFunction[IRP_MJ_READ] = DispatchCustum;
    //DriverObject->MajorFunction[IRP_MJ_WRITE] = DispatchCustum;
    KdPrint(("Driver Load"))
    return status;
}

#include "ntddk.h"
UNICODE_STRING DeviceName = RTL_CONSTANT_STRING(L"\\Device\\mydevice123");
PDRIVER_OBJECT Symlink = RTL_CONSTANT_STRING(L"\\Device\\mysymlinkdevice");
PDRIVER_OBJECT DriverObject=NULL;
VOID Unload(PDRIVER_OBJECT DriverObject)
{
    IoDeleteSymbolicLink(&SymLinkName);
    IoDeleteDevice(DeviceObject);
    KdPrint(("Driver Unload is Delete Device"));
}
NTSTAUS DriverEntry(PDRIVER_OBJECT DeviceObject, PUNICODE_STRING RejistryPath)
{
    NTSTATUS staus;
    int i ;
    DriverObject->DriverUnload = Unload;
    IoCreateDevice(DriverObject,0,&DeviceName;FILE_DEVICE_UNKNOWN_SECURE_OPEN, FALSE,);
    if(!NT_SUCCESS(status)){
        KdPrint(("driver Unsuccess"));
    return status;}
    status = IoCreateSymbolicLink(&SymLink ,&SymName);
    if(!NT_STATUS(status)){
    KdPrint(("SymLink Unccess "));}
    return status
    //DriverObject->MajorFunction[IRP_MJ_READ] = DispatchCustom;
    //DriverObject->Major_Function[IRP_WRITE] = DispatchCUstom;
    KdPrint("Driver Unload")
}
~
