.class Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;
.super Ljava/lang/Object;
.source "CocktailBarSettingObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->setupWakeup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver$1;->this$0:Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;

    # getter for: Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->mLastActiveEdgeArea:I
    invoke-static {v0}, Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;->access$000(Lcom/android/server/cocktailbar/settings/CocktailBarSettingObserver;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupArea(I)V

    return-void
.end method
