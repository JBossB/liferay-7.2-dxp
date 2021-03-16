<div class="container-fluid pl0 pr0 pt100">   
    <p class="titulo1">NUESTROS MODELOS</p>
    <div class="container-1170 mt70">
        <div class="row ml0 mr0">
        <#if entries?has_content>
            <#list entries as curEntry>
                <div class="col-sm-6 mb30">
                    <#assign renderer=curEntry.getAssetRenderer()>
                    <#assign journalArticle=renderer.getAssetObject() /> 
                    
                    <a href="/-/${journalArticle.getUrlTitle()}">
                    
                        <@liferay_journal["journal-article"] 
                            articleId=journalArticle.getArticleId() 
                            ddmTemplateKey="1122916"
                            groupId=journalArticle.getGroupId() 
                    />
                </div>
            </#list>
        </#if>
    </div>
</div>