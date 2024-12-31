package com.cultode.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cultode.dao.ArticleDAO;
import com.cultode.model.BlogArticle;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDAO articleDao;
	
	@Override
	public boolean saveArtcile(BlogArticle article) {
		return articleDao.saveArtcile(article);
	}
	
	@Override
	public List<BlogArticle> getBlogArtciles(String category, int limit,
			int offset) {
		return articleDao.getBlogArtciles(category, limit, offset);
	}

	@Override
	public List<BlogArticle> getRecentBlogArtciles(int limit) {
		return articleDao.getRecentBlogArtciles(limit);
	}

	@Override
	public BlogArticle getBlogArticle(int article_id) {
		return articleDao.getBlogArticle(article_id);
	}

	@Override
	public List<String> getBlogArticleCategoryList() {

		return articleDao.getBlogArticleCategoryList();
	}

	@Override
	public int getNextOrPreviousBlogArticleCode(String category, int id,
			boolean next, boolean previous) {
		
		return articleDao.getNextOrPreviousBlogArticleCode(category, id, next, previous);
	}

	public int getBlogArticlesCount(String category) {
		
		return articleDao.getBlogArticlesCount(category);
	}
	
	@Override
	public List<BlogArticle> getUserBlogArtciles(int userId, int limit,
			int offset) {
		return articleDao.getUserBlogArtciles(userId, limit, offset);
	}

	@Override
	public boolean incNoOfViews(int id) {
		return articleDao.incNoOfViews(id);
	}

}
