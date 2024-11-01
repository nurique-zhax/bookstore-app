package zhaxylyk.dev.entity;

import jakarta.persistence.*;
import lombok.Data;


import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;

@Data
@Entity
public class Order {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
    private Long id;
    @ManyToOne
    private User user;
    @ManyToMany
    private List<Book> books;
    private LocalDateTime orderDate;
    private BigDecimal totalPrice;

}
