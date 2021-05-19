package com.voice.tokaproduct.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.voice.tokaproduct.entity.Player;
import com.voice.tokaproduct.repository.PlayerRepository;

@Service
public class PlayerService {
    @Autowired
    private PlayerRepository repo;
    
    public Player save(Player player) {
        return repo.save(player);
    }
	
    public List<Player> findAll() {
        return repo.findAll();
    }
    public Player findOne(Long id) {
        return repo.getOne(id);
    }
    
    public void delete(Long id) {
        repo.deleteById(id);
    }
}
