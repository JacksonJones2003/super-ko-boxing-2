.class Lcom/glu/android/ResFileDownloadView$1;
.super Ljava/lang/Thread;
.source "ResFileDownloadView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/glu/android/ResFileDownloadView;->newState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/glu/android/ResFileDownloadView;


# direct methods
.method constructor <init>(Lcom/glu/android/ResFileDownloadView;)V
    .locals 0

    .prologue
    .line 878
    iput-object p1, p0, Lcom/glu/android/ResFileDownloadView$1;->this$0:Lcom/glu/android/ResFileDownloadView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 881
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    invoke-static {}, Lcom/glu/android/GluUtil;->downloadResourceFile()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    .line 882
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    sget-object v1, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    sget-object v1, Lcom/glu/android/ResFileDownloadView;->m_downloadError:Ljava/lang/String;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadFailed:Z

    .line 883
    sget-object v0, Lcom/glu/android/ResFileDownloadView;->instance:Lcom/glu/android/ResFileDownloadView;

    iput-boolean v2, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadDone:Z

    .line 885
    iget-object v0, p0, Lcom/glu/android/ResFileDownloadView$1;->this$0:Lcom/glu/android/ResFileDownloadView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/glu/android/ResFileDownloadView;->m_downloadThread:Ljava/lang/Thread;

    .line 886
    return-void

    .line 882
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
