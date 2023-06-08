package com.fpl.sof2031.entities;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;
import java.sql.Date;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Product implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotBlank(message = "Vui lòng nhập mã sản phẩm")
    private String code;
    @NotBlank(message = "Vui lòng nhập tên sản phẩm")
    private String name;
//    @NotBlank(message = "Vui lòng nhập số lượng sản phẩm")
    private Integer quantity;
//    @NotBlank(message = "Vui lòng nhập giá bán sản phẩm")
    private Double priceSale;
//    @NotBlank(message = "Vui lòng nhập nhập sản phẩm")
    private Double priceImport;
    private Integer avaliable;
    private String image;
    private String descriptions;
    private Date createDate;
    private Integer deleted;
    @ManyToOne()
    @JoinColumn(name = "category_id")
    private Category category;
}
