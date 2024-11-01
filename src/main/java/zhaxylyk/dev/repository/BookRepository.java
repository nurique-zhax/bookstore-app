package zhaxylyk.dev.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import zhaxylyk.dev.entity.Book;


@Repository
public interface BookRepository extends JpaRepository<Book, Long> {
}
