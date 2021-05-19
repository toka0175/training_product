package com.voice.tokaproduct.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;

import com.voice.tokaproduct.entity.Player;
import com.voice.tokaproduct.service.PlayerService;

@Controller

public class PlayerController {
    @Autowired
    private PlayerService service;
	
    // 新規登録
    @GetMapping("/players/new")
    public String newPlayer(Model model) {
        return "new";
    }
    
    // リストの保存
    @PostMapping("/players")
    public String create(@ModelAttribute Player player) {
        service.save(player);
        return "redirect:/players";
    }
    
    @GetMapping("/players")
    public String index(Model model) {
        List<Player> players = service.findAll();
        model.addAttribute("players", players);
        return "index";
    }
    
    //　idの人の情報を表示
    @GetMapping("players/{id}")
    public String show(@PathVariable Long id, Model model) {
        Player player = service.findOne(id);
        model.addAttribute("player", player);
        return "show";
    }
    
 //　idの人の情報を編集
    @GetMapping("/players/{id}/edit")
    public String edit(@PathVariable Long id, Model model) { // ⑤
        Player player = service.findOne(id);
        model.addAttribute("player", player);
        return "edit";
    }
    
 //　idの人の情報を更新
    @PostMapping("/players/{id}")
    public String update(@PathVariable Long id, @ModelAttribute Player player) {
        player.setId(id);
        service.save(player);
        return "redirect:/players";
    }
    
    //リストの人を削除する
    @DeleteMapping("{id}")
    public String destroy(@PathVariable Long id) {
        service.delete(id);
        return "redirect:/players";
    }
    	
}
