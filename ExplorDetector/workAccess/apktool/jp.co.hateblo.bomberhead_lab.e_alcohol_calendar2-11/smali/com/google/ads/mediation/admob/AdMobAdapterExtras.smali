.class public Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/NetworkExtras;


# instance fields
.field private a:Z

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 22
    invoke-virtual {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .line 23
    return-void
.end method

.method public constructor <init>(Lcom/google/ads/mediation/admob/AdMobAdapterExtras;)V
    .locals 2
    .param p1, "original"    # Lcom/google/ads/mediation/admob/AdMobAdapterExtras;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;-><init>()V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iget-boolean v0, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    iput-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 35
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 37
    :cond_0
    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    return-object p0
.end method

.method public clearExtras()Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 1

    .prologue
    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    .line 116
    return-object p0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
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

    .prologue
    .line 91
    iget-object v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    return-object v0
.end method

.method public getPlusOneOptOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public getUseExactAdSize()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    return v0
.end method

.method public setExtras(Ljava/util/Map;)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/ads/mediation/admob/AdMobAdapterExtras;"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Argument \'extras\' may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->b:Ljava/util/Map;

    .line 106
    return-object p0
.end method

.method public setPlusOneOptOut(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 0
    .param p1, "plusOneOptOut"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 44
    return-object p0
.end method

.method public setUseExactAdSize(Z)Lcom/google/ads/mediation/admob/AdMobAdapterExtras;
    .locals 0
    .param p1, "useExactAdSize"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/ads/mediation/admob/AdMobAdapterExtras;->a:Z

    .line 70
    return-object p0
.end method
