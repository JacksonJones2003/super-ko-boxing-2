.class public interface abstract Lcom/verizon/vcast/apps/IVCastAppsLicenseService;
.super Ljava/lang/Object;
.source "IVCastAppsLicenseService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verizon/vcast/apps/IVCastAppsLicenseService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getLicense(Ljava/lang/String;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
