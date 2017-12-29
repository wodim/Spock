.class final Lcom/miui/analytics/internal/f/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/analytics/internal/f/u;->a(Landroid/content/SharedPreferences;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Landroid/content/SharedPreferences;

.field private synthetic b:Lcom/miui/analytics/internal/f/u;


# direct methods
.method constructor <init>(Lcom/miui/analytics/internal/f/u;Landroid/content/SharedPreferences;)V
    .registers 3

    .prologue
    .line 197
    iput-object p1, p0, Lcom/miui/analytics/internal/f/u$1;->b:Lcom/miui/analytics/internal/f/u;

    iput-object p2, p0, Lcom/miui/analytics/internal/f/u$1;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    .prologue
    .line 200
    const-string v0, "PrefsHelper"

    const-string v1, "start compatibleWithOldVersion"

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :try_start_7
    iget-object v0, p0, Lcom/miui/analytics/internal/f/u$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .line 203
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 204
    iget-object v0, p0, Lcom/miui/analytics/internal/f/u$1;->b:Lcom/miui/analytics/internal/f/u;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/u;->a(Lcom/miui/analytics/internal/f/u;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 205
    :cond_1f
    :goto_1f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_22} :catch_46

    move-result v0

    if-eqz v0, :cond_95

    .line 207
    :try_start_25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 208
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    instance-of v5, v1, Ljava/lang/String;

    if-eqz v5, :cond_53

    .line 210
    check-cast v1, Ljava/lang/String;

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_39

    goto :goto_1f

    .line 222
    :catch_39
    move-exception v0

    .line 223
    :try_start_3a
    const-string v1, "PrefsHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "compatibleWithOldVersion put to new e"

    invoke-static {v1, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_45} :catch_46

    goto :goto_1f

    .line 229
    :catch_46
    move-exception v0

    .line 230
    const-string v1, "PrefsHelper"

    invoke-static {v1}, Lcom/miui/analytics/internal/f/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "compatibleWithOldVersion e"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 232
    :goto_52
    return-void

    .line 211
    :cond_53
    :try_start_53
    instance-of v5, v1, Ljava/lang/Long;

    if-eqz v5, :cond_61

    .line 212
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {v4, v0, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f

    .line 213
    :cond_61
    instance-of v5, v1, Ljava/lang/Integer;

    if-eqz v5, :cond_6f

    .line 214
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f

    .line 215
    :cond_6f
    instance-of v5, v1, Ljava/lang/Float;

    if-eqz v5, :cond_7d

    .line 216
    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f

    .line 217
    :cond_7d
    instance-of v5, v1, Ljava/lang/Boolean;

    if-eqz v5, :cond_8b

    .line 218
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_1f

    .line 219
    :cond_8b
    instance-of v5, v1, Ljava/util/Set;

    if-eqz v5, :cond_1f

    .line 220
    check-cast v1, Ljava/util/Set;

    invoke-interface {v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_94} :catch_39

    goto :goto_1f

    .line 226
    :cond_95
    :try_start_95
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-object v0, p0, Lcom/miui/analytics/internal/f/u$1;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 228
    iget-object v0, p0, Lcom/miui/analytics/internal/f/u$1;->b:Lcom/miui/analytics/internal/f/u;

    invoke-static {v0}, Lcom/miui/analytics/internal/f/u;->b(Lcom/miui/analytics/internal/f/u;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/analytics/internal/f/u$1;->b:Lcom/miui/analytics/internal/f/u;

    invoke-static {v1}, Lcom/miui/analytics/internal/f/u;->c(Lcom/miui/analytics/internal/f/u;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/analytics/internal/f/u;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b4} :catch_46

    goto :goto_52
.end method
