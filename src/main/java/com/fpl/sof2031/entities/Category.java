package com.fpl.sof2031.entities;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
public class Category implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @NotBlank(message = "Vui lòng nhập mã danh mục")
    private String ma;
    @NotBlank(message = "Vui lòng nhập tên danh mục")
    private String name;
    private String descriptions;
    private Integer deleted;
    @OneToMany(mappedBy = "category")
    private List<Product> list = new ArrayList<>();
}
