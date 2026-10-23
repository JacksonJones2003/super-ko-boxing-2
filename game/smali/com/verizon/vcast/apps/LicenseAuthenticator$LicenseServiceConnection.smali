.class Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;
.super Ljava/lang/Object;
.source "LicenseAuthenticator.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/verizon/vcast/apps/LicenseAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LicenseServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;


# direct methods
.method constructor <init>(Lcom/verizon/vcast/apps/LicenseAuthenticator;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "boundService"    # Landroid/os/IBinder;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {p2}, Lcom/verizon/vcast/apps/IVCastAppsLicenseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/verizon/vcast/apps/IVCastAppsLicenseService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$0(Lcom/verizon/vcast/apps/LicenseAuthenticator;Lcom/verizon/vcast/apps/IVCastAppsLicenseService;)V

    .line 135
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$1(Lcom/verizon/vcast/apps/LicenseAuthenticator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$1(Lcom/verizon/vcast/apps/LicenseAuthenticator;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 135
    monitor-exit v0

    .line 139
    return-void

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, 0x0

    .line 142
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$0(Lcom/verizon/vcast/apps/LicenseAuthenticator;Lcom/verizon/vcast/apps/IVCastAppsLicenseService;)V

    .line 143
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v0, v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$2(Lcom/verizon/vcast/apps/LicenseAuthenticator;Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;)V

    .line 144
    iget-object v0, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v0}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$1(Lcom/verizon/vcast/apps/LicenseAuthenticator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/verizon/vcast/apps/LicenseAuthenticator$LicenseServiceConnection;->this$0:Lcom/verizon/vcast/apps/LicenseAuthenticator;

    invoke-static {v1}, Lcom/verizon/vcast/apps/LicenseAuthenticator;->access$1(Lcom/verizon/vcast/apps/LicenseAuthenticator;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v0

    .line 147
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
