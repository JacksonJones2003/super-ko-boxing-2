.class public Lcom/openfeint/api/Notification$Delegate;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/openfeint/api/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Delegate"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canShowNotification(Lcom/openfeint/api/Notification;)Z
    .locals 1
    .param p1, "notification"    # Lcom/openfeint/api/Notification;

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method

.method public displayNotification(Lcom/openfeint/api/Notification;)V
    .locals 0
    .param p1, "notification"    # Lcom/openfeint/api/Notification;

    .prologue
    .line 36
    return-void
.end method

.method public notificationWillShow(Lcom/openfeint/api/Notification;)V
    .locals 0
    .param p1, "notification"    # Lcom/openfeint/api/Notification;

    .prologue
    .line 43
    return-void
.end method
