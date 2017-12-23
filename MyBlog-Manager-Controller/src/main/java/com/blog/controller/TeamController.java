package com.blog.controller;

import com.blog.pojo.TClass;
import com.blog.service.ClassService;
import com.blog.utils.PageResult;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;


@Controller
@RequestMapping("/class")
public class TeamController extends BaseController{

    private Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private ClassService classService;

    /**
     * 增加班级
     * @param tClass
     * @param model
     * @return
     */
    @RequestMapping("/add")
    public String addArticle(TClass tClass, Model model, HttpServletRequest request){



        Integer count = classService.insert(tClass);

        return "article";
    };

    /**
     * 查询所有文章的信息
     * @return
     */
    @RequestMapping("/findList")
    @ResponseBody
    public String findArticleList(Integer pageNo,Integer pageSize){
        logger.info("分页查询用户信息列表请求入参：pageNumber{},pageSize{}", pageNo,pageSize);
        try {
            PageResult<TClass> articleList = classService.findTClassList(pageNo, pageSize);
            return responseSuccess(articleList);
        } catch (Exception e) {
            return responseFail(e.getMessage());
        }
    }

    /**
     * 查询所有班级
     */
    @RequestMapping(value = "/getAllClass",method = RequestMethod.GET)
    public String getAllClass(HttpServletRequest request, Model model) {
        List<TClass> classList = classService.selectByParams(null);
        model.addAttribute("classList", classList);
        request.setAttribute("classList", classList);
        return "class";
    }

    /**
     * 删除文章
     * @param id
     * @return
     */
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    public String deleteArticle(String id){
        classService.deleteArticle(Integer.parseInt(id));
        return "article";
    }

    /**
     * 修改文章的信息之前，查询单个的文章信息，回显
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/get")
    public String getArticle(String id,Model model){
        TClass tClass = classService.getTClass(Integer.parseInt(id));
        model.addAttribute("tClass",tClass);
        return "update-article";
    }

    /**
     * 修改文章
     * @param tClass
     * @return
     */
    @RequestMapping("/update")
    public String modifyArticle(TClass tClass,String id){
        tClass.setClassId(Integer.parseInt(id));
        classService.updateTClass(tClass);
        return "article";
    }
}
