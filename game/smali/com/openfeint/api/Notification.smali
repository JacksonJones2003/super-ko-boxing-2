.class public abstract Lcom/openfeint/api/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/openfeint/api/Notification$Type;,
        Lcom/openfeint/api/Notification$Category;,
        Lcom/openfeint/api/Notification$Delegate;
    }
.end annotation


# static fields
.field private static sDelegate:Lcom/openfeint/api/Notification$Delegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    new-instance v0, Lcom/openfeint/api/Notification$Delegate;

    invoke-direct {v0}, Lcom/openfeint/api/Notification$Delegate;-><init>()V

    sput-object v0, Lcom/openfeint/api/Notification;->sDelegate:Lcom/openfeint/api/Notification$Delegate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method public static getDelegate()Lcom/openfeint/api/Notification$Delegate;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/openfeint/api/Notification;->sDelegate:Lcom/openfeint/api/Notification$Delegate;

    return-object v0
.end method

.method public static setDelegate(Lcom/openfeint/api/Notification$Delegate;)V
    .locals 0
    .param p0, "delegate"    # Lcom/openfeint/api/Notification$Delegate;

    .prologue
    .line 56
    sput-object p0, Lcom/openfeint/api/Notification;->sDelegate:Lcom/openfeint/api/Notification$Delegate;

    return-void
.end method


# virtual methods
.method public abstract getCategory()Lcom/openfeint/api/Notification$Category;
.end method

.method public abstract getText()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/openfeint/api/Notification$Type;
.end method

.method public abstract getUserData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method
