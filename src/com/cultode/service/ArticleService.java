package com.cultode.service;

import java.util.List;

import com.cultode.model.BlogArticle;

public interface ArticleService {
	
	public List<BlogArticle> getBlogArtciles(String category, int limit,
			int offset);

	public List<BlogArticle> getRecentBlogArtciles(int client_id);

	public BlogArticle getBlogArticle(int article_id);

	public List<String> getBlogArticleCategoryList();
	
	public int getNextOrPreviousBlogArticleCode(String category,int id, boolean next,
			boolean previous);
	
	public int getBlogArticlesCount(String category);

	public boolean saveArtcile(BlogArticle article);

	public List<BlogArticle> getUserBlogArtciles(int usernId, int limit, int offset);

	public boolean incNoOfViews(int id);	

}
