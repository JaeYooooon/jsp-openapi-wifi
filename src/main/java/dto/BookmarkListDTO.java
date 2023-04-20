package dto;

import lombok.*;

import java.sql.Timestamp;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@ToString(callSuper = true)
@EqualsAndHashCode()
public class BookmarkListDTO {
    Integer ID;
    Integer GroupId;
    String NAME;
    String WifiName;
    String WifiNo;
    Timestamp CREATETIME;
    Timestamp RETIME;
}
