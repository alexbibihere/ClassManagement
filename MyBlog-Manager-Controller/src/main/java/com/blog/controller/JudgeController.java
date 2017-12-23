//package com.blog.controller;
//
//import com.blog.pojo.Judge;
//import com.blog.utils.PageResult;
//import com.github.pagehelper.PageHelper;
//import com.github.pagehelper.PageInfo;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import javax.servlet.http.HttpServletRequest;
//import java.util.HashMap;
//import java.util.List;
//import java.util.Map;
//
///**
// * @author: yan
// * @Date: 2017/12/23/0023 17:58
// * @Description:
// */
//public class JudgeController {
//    /**
//     * 增加文章的信息
//     *
//     * @param judge
//     * @param
//     * @return
//     */
//    @RequestMapping("/add")
//    public String addArticle(Judge judge) {
//
////        String titleImages = request.getParameter("titleImages");
//
////        System.out.print("titleImages:" + titleImages);
//
//        Integer count = articleService.insertArticle(judge);
//
//        return "article";
//    }
//
//    ;
//
//    /**
//     * 查询所有文章的信息
//     *
//     * @return
//     */
//    @RequestMapping("/select")
//    @ResponseBody
//    public String selectByAll(Integer pageNo, Integer pageSize) {
//        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNo, pageSize);
//        try {
//            PageResult<Article> articleList = articleService.selectByAll(pageNo, pageSize);
//            int count = articleService.countByParams(null);
//            articleList.setTotal(count);
//            return responseSuccess(articleList);
//        } catch (Exception e) {
//            return responseFail(e.getMessage());
//        }
//    }
//    /**
//     * 查询所有日志
//     */
//    @RequestMapping(value = "/getAllLog",method = RequestMethod.GET)
//    public String getAlllog(HttpServletRequest request, Model model) {
//        Map<String,Object> params = new HashMap<String,Object>();
//        List<Article> articleList = articleService.selectByParams(params);
//        model.addAttribute("articleList", articleList);
//        request.setAttribute("articleList", articleList);
//        return "front";
//    }
//    /**
//     * 查询文章列表
//     */
//    @RequestMapping("/getArticles")
//    @ResponseBody
//    public Msg getArticles(@RequestParam(value="pn",defaultValue="1")Integer pn){
//        PageHelper.startPage(pn, 5);
//        List<Article> articleList=articleService.selectByParams(null);
//        PageInfo<Article> pageInfo = new PageInfo<>(articleList,5);
//        return Msg.success().add("pageInfo",pageInfo);
//    }
//
//
//    /**
//     * 查询文章评论
//     */
//    @RequestMapping(value = "/getComment",method = RequestMethod.GET)
//    @ResponseBody
//    public Msg getComment(Long id) {
//        Comment commentList = commentService.selectByPrimaryKey(id);
//        return Msg.success().add("commentList",commentList);
//    }
//
//    /**
//     * 查询最近文章
//     */
//    @RequestMapping(value = "/getNewArticles",method = RequestMethod.GET)
//    @ResponseBody
//    public Msg getNewNotice() {
//        List<Article> articleList = articleService.selectByLast();
//        return Msg.success().add("articleList",articleList);
//    }
//
//    /**
//     * 删除文章
//     *
//     * @param id
//     * @return
//     */
//    @RequestMapping(value = "/delete", method = RequestMethod.POST)
//    public String deleteArticle(Integer id) {
//        articleService.deleteArticle(id);
//        return "article";
//    }
//
//    /**
//     * 修改文章的信息之前，查询单个的文章信息，回显
//     *
//     * @param id
//     * @param model
//     * @return
//     */
//    @RequestMapping("/get")
//    public String getArticle(String id, Model model) {
//        Article article = articleService.getArticle(Integer.parseInt(id));
//        model.addAttribute("article", article);
//        return "update-article";
//    }
//
//    /**
//     * 修改文章
//     *
//     * @param article
//     * @return
//     */
//    @RequestMapping("/update")
//    public String modifyArticle(Article article, String id) {
//        article.setId(Integer.parseInt(id));
//        articleService.updateArticle(article);
//        return "article";
//    }
//
//}
