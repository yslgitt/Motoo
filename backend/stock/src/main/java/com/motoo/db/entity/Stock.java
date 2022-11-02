package com.motoo.db.entity;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

@Entity
@Getter @Setter
@Table(name= "stock")
public class Stock {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Long stockId;

    private String ticker;

    private String name;

    private int price;

    private int close_price;

    private double fluctuation_rate;

    private int fluctuation_price;

    private int volume;

    private BigInteger trading_value;

    private int maximum;

    private int minimum;

    private double per;

    private BigInteger m_capital;

    private BigInteger issued;

    private int capital;

    private int category_id;

    private double roe;

    private double eps;


    @JsonIgnore
    @Builder.Default
    @OneToMany(mappedBy="stock")
    private List<FavoriteStock> favoriteStocks = new ArrayList<>();


    @JsonIgnore
    @Builder.Default
    @OneToMany(mappedBy="stock")
    private List<AccountStock> accountStocks = new ArrayList<>();
}
