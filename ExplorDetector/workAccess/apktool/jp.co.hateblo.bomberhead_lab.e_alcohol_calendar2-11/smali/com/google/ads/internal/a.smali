.class public Lcom/google/ads/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/ads/util/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/ads/util/f",
            "<",
            "Lcom/google/ads/internal/a;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/ads/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/google/ads/internal/a;

    invoke-direct {v0}, Lcom/google/ads/internal/a;-><init>()V

    sput-object v0, Lcom/google/ads/internal/a;->e:Lcom/google/ads/internal/a;

    .line 68
    new-instance v0, Lcom/google/ads/internal/a$2;

    invoke-direct {v0}, Lcom/google/ads/internal/a$2;-><init>()V

    sput-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    .line 83
    new-instance v0, Lcom/google/ads/internal/a$3;

    invoke-direct {v0}, Lcom/google/ads/internal/a$3;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/internal/a;->b:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/google/ads/internal/a$4;

    invoke-direct {v0}, Lcom/google/ads/internal/a$4;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/internal/a;->c:Ljava/util/Map;

    .line 101
    new-instance v0, Lcom/google/ads/internal/a$1;

    invoke-direct {v0}, Lcom/google/ads/internal/a$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/ads/internal/a;->d:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/ads/internal/a;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/google/ads/internal/a;->e:Lcom/google/ads/internal/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/a;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 147
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 148
    if-nez v1, :cond_0

    .line 149
    const-string v1, "An error occurred while parsing the AMSG parameters."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-object v0

    .line 154
    :cond_0
    const-string v2, "launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    const-string v0, "a"

    const-string v1, "intent"

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v0, "u"

    const-string v1, "url"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v0, "/open"

    goto :goto_0

    .line 159
    :cond_1
    const-string v2, "closecanvas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const-string v0, "/close"

    goto :goto_0

    .line 161
    :cond_2
    const-string v2, "log"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 162
    const-string v0, "/log"

    goto :goto_0

    .line 164
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An error occurred while parsing the AMSG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :cond_4
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/a;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :cond_5
    const-string v1, "Message was neither a GMSG nor an AMSG."

    invoke-static {v1}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 313
    const-string v0, "onshow"

    const-string v1, "{\'version\': \'afma-sdk-a-v6.4.1\'}"

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending JS to a WebView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->a(Ljava/lang/String;)V

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 276
    const-string v0, "AFMA_ReceiveMessage"

    .line 277
    if-eqz p3, :cond_0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 282
    :goto_0
    return-void

    .line 280
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/webkit/WebView;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 304
    const-string v1, "openableURLs"

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public a(Lcom/google/ads/internal/d;Ljava/util/Map;Landroid/net/Uri;Landroid/webkit/WebView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/ads/o;",
            ">;",
            "Landroid/net/Uri;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 188
    invoke-static {p3}, Lcom/google/ads/util/AdUtil;->b(Landroid/net/Uri;)Ljava/util/HashMap;

    move-result-object v1

    .line 189
    if-nez v1, :cond_0

    .line 190
    const-string v0, "An error occurred while parsing the message parameters."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p3, v1}, Lcom/google/ads/internal/a;->a(Landroid/net/Uri;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v2

    .line 196
    if-nez v2, :cond_1

    .line 197
    const-string v0, "An error occurred while parsing the message."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/o;

    .line 203
    if-nez v0, :cond_2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No AdResponse found, <message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_2
    invoke-interface {v0, p1, v1, p4}, Lcom/google/ads/o;->a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method public a(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 221
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-nez v1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/ads/internal/a;->b(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/ads/internal/a;->c(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Landroid/webkit/WebView;)V
    .locals 2

    .prologue
    .line 324
    const-string v0, "onhide"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public b(Landroid/net/Uri;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 237
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_0

    const-string v2, "gmsg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return v0

    .line 243
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 244
    if-eqz v1, :cond_0

    const-string v2, "mobileads.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public c(Landroid/net/Uri;)Z
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 261
    if-eqz v0, :cond_0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    :cond_0
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
