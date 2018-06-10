package com.example.demo;

import com.example.demo.domain.model.entity.Post;
import com.example.demo.infrastructure.dao.PostDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/post")
public class PostController {

    @Autowired
    private PostDao postDao;

    @RequestMapping("/write")
    public String write(Post post) {
        post.setRegDate(new Date());
        return "redirect:/post/"+postDao.save(post).getId();
    }

    @RequestMapping("/list")
    public String list(Model model) {
        List<Post> postList = postDao.findAll();
        model.addAttribute("postList", postList);
        return "hello";
    }

    @RequestMapping("/{id}")
    public String view(Model model, @PathVariable int id) {
        Post post = postDao.getOne(id);
        model.addAttribute("post", post);
        return "post";
    }
}
