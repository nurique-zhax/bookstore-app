package zhaxylyk.dev.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import zhaxylyk.dev.entity.Order;


@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
}
