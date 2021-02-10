package com.model;

import lombok.*;

import javax.persistence.*;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Builder

@Entity
@Table(name = "food")
public class Food {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private long id;
    @Column(name = "name")
    private String nameFood;
    @Column(name = "description")
    private String descriptionFood;
//    @Column(name = "type")
//    @Enumerated(EnumType.ORDINAL)
//    private getTypeFood typeFood;
//
//    public enum getTypeFood{
//        DRINK,
//        ENTREE,
//        SALADS,
//        SANDWICHES,
//        STARTER
//    }


}
