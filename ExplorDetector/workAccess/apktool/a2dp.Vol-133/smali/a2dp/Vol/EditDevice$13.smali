.class La2dp/Vol/EditDevice$13;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/EditDevice;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 793
    iput-object p1, p0, La2dp/Vol/EditDevice$13;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 797
    return-void
.end method
