.class public Lcom/miui/analytics/internal/e/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "RsaUtils"

.field private static final d:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDgA/ZfzV1GkdjfCisZRtorDWRm\r8FklXv5wjoNQxFL+qjiN5rxmQSrP0ksyuJVeSiy7mPRMYLMoUF7bDvYudhRvxkuL\rq6EByE/O3lksvJUjvlxr2KqcGQ3xbTY3xK52ilvh4CfBarAzzXl850ejqMhsLEZ7\rpH2mQm+AMQ75+PD7NwIDAQAB\r"

.field private static final e:Ljava/lang/String; = "MIICXQIBAAKBgQDgA/ZfzV1GkdjfCisZRtorDWRm8FklXv5wjoNQxFL+qjiN5rxm\rQSrP0ksyuJVeSiy7mPRMYLMoUF7bDvYudhRvxkuLq6EByE/O3lksvJUjvlxr2Kqc\rGQ3xbTY3xK52ilvh4CfBarAzzXl850ejqMhsLEZ7pH2mQm+AMQ75+PD7NwIDAQAB\rAoGAKG7uqEoT/OnUQCXAs7ZDKKQpLB9Tp9gmisBeWVSmOksVHB+6f6ZhiNNHOWdx\rpmwy+MVZyvNlQvCGvnlL3AT6GQARcwaVpxAnIsSezCqYqsHFlFRS2FR6WnGyh4TZ\rCP1DtErjcWikNxD0eTVS6kigiLrebLRiNmv4pdfbylgFh2kCQQD+Ymqu9WbGrJFq\rz1QJffpeeJ59NGIcm0FNxySe3fYds3OfFAOgueVnH2tVAirM1jGMIIhblp0GZa5z\rHgSGft+7AkEA4XAr1Cn6qsNx1F96AixGu58yGgNyP2SJNbm2YhMeUOXyMOUTSyZV\r5+M1b6RWFz+csnm2imRjoMdyuUvT+KuktQJBAKF51aCj1A6vQkubugugdUp8pJZz\rpwfjoat+iwdxfCZUYEONj9P5zN4N+rLmgkaufJsnl4cT7y89YmRenJ7HcLsCQQCX\rZuwoiyDr+mLCTHT2bKH8c8gELHhYFr8Hs/fHGivsDOKA7/frKo3bNH64wdeHuZMV\rUiTEAPPgENL9mu17PltZAkB4gPRfeOR5yK5cNk9lE4v6R8ZhcWbMKdH8AATJTm+s\rIagSWr0V868v6fGF6bP2eWzgy0N8VZd3DYu1+0Q0Qy3r\r"

.field private static final f:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"

.field private static final g:Ljava/lang/String; = "BC"

.field private static final h:Ljava/lang/String; = "RSA"


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Lcom/miui/analytics/internal/e/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/miui/analytics/internal/e/a;)V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/analytics/internal/e/i;->a:Ljava/lang/Object;

    .line 23
    iput-object p1, p0, Lcom/miui/analytics/internal/e/i;->b:Lcom/miui/analytics/internal/e/a;

    .line 24
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/miui/analytics/internal/e/i;->a:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/analytics/internal/e/i;->b:Lcom/miui/analytics/internal/e/a;

    .line 19
    return-void
.end method

.method public static a(Lcom/miui/analytics/internal/e/a;)Lcom/miui/analytics/internal/e/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/miui/analytics/internal/e/a;",
            ")",
            "Lcom/miui/analytics/internal/e/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v0, Lcom/miui/analytics/internal/e/i;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/e/i;-><init>(Lcom/miui/analytics/internal/e/a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/miui/analytics/internal/e/i;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/miui/analytics/internal/e/i",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/miui/analytics/internal/e/i;

    invoke-direct {v0, p0}, Lcom/miui/analytics/internal/e/i;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/interfaces/RSAPublicKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3072
    const-string v0, "RSA"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 3074
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {p0}, Lcom/miui/analytics/internal/f/c;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 3075
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 3077
    return-object v0
.end method

.method private static a([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1049
    const-string v0, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDgA/ZfzV1GkdjfCisZRtorDWRm\r8FklXv5wjoNQxFL+qjiN5rxmQSrP0ksyuJVeSiy7mPRMYLMoUF7bDvYudhRvxkuL\rq6EByE/O3lksvJUjvlxr2KqcGQ3xbTY3xK52ilvh4CfBarAzzXl850ejqMhsLEZ7\rpH2mQm+AMQ75+PD7NwIDAQAB\r"

    .line 1072
    const-string v1, "RSA"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1074
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 1075
    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 1050
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 1051
    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 1052
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 1054
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/security/interfaces/RSAPrivateKey;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3083
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {p0}, Lcom/miui/analytics/internal/f/c;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 3084
    const-string v1, "RSA"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 3085
    invoke-virtual {v1, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 3087
    return-object v0
.end method

.method private static b([B)[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 2062
    const-string v0, "MIICXQIBAAKBgQDgA/ZfzV1GkdjfCisZRtorDWRm8FklXv5wjoNQxFL+qjiN5rxm\rQSrP0ksyuJVeSiy7mPRMYLMoUF7bDvYudhRvxkuLq6EByE/O3lksvJUjvlxr2Kqc\rGQ3xbTY3xK52ilvh4CfBarAzzXl850ejqMhsLEZ7pH2mQm+AMQ75+PD7NwIDAQAB\rAoGAKG7uqEoT/OnUQCXAs7ZDKKQpLB9Tp9gmisBeWVSmOksVHB+6f6ZhiNNHOWdx\rpmwy+MVZyvNlQvCGvnlL3AT6GQARcwaVpxAnIsSezCqYqsHFlFRS2FR6WnGyh4TZ\rCP1DtErjcWikNxD0eTVS6kigiLrebLRiNmv4pdfbylgFh2kCQQD+Ymqu9WbGrJFq\rz1QJffpeeJ59NGIcm0FNxySe3fYds3OfFAOgueVnH2tVAirM1jGMIIhblp0GZa5z\rHgSGft+7AkEA4XAr1Cn6qsNx1F96AixGu58yGgNyP2SJNbm2YhMeUOXyMOUTSyZV\r5+M1b6RWFz+csnm2imRjoMdyuUvT+KuktQJBAKF51aCj1A6vQkubugugdUp8pJZz\rpwfjoat+iwdxfCZUYEONj9P5zN4N+rLmgkaufJsnl4cT7y89YmRenJ7HcLsCQQCX\rZuwoiyDr+mLCTHT2bKH8c8gELHhYFr8Hs/fHGivsDOKA7/frKo3bNH64wdeHuZMV\rUiTEAPPgENL9mu17PltZAkB4gPRfeOR5yK5cNk9lE4v6R8ZhcWbMKdH8AATJTm+s\rIagSWr0V868v6fGF6bP2eWzgy0N8VZd3DYu1+0Q0Qy3r\r"

    .line 2083
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/c;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 2084
    const-string v0, "RSA"

    const-string v2, "BC"

    invoke-static {v0, v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 2085
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 2063
    const-string v1, "RSA/ECB/PKCS1Padding"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 2064
    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 2065
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 2067
    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miui/analytics/internal/e/i;->b:Lcom/miui/analytics/internal/e/a;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
