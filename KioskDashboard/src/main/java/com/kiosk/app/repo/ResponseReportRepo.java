package com.kiosk.app.repo;

import com.kiosk.app.model.ResponseReport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ResponseReportRepo extends JpaRepository<ResponseReport,Long> {

    @Query("SELECT COUNT(response) FROM ResponseReport WHERE laId =:laId AND counterId =:counterId AND response =:response")
    public int findCounterById(@Param("laId") String laId, @Param("counterId") String counterId,
                               @Param("response") String response);

    @Query("SELECT COUNT(response) FROM ResponseReport WHERE laId =:laId AND counterId =:counterId")
    public int findCounterTotal(@Param("laId") String laId, @Param("counterId") String counterId);

    @Query("SELECT COUNT(response) FROM ResponseReport WHERE laId =:laId AND response =:response")
    public int findResponseTotal(@Param("laId") String laId,  @Param("response") String response);

    @Query("SELECT COUNT(gender) FROM ResponseReport WHERE laId =:laId AND counterId =:counterId AND response =:response AND gender =:gender")
    public int findGenderResponse(@Param("laId") String laId, @Param("counterId") String counterId,
                                  @Param("response") String response, @Param("gender") String gender);

    @Query("SELECT r FROM ResponseReport r WHERE laId =:laId AND counterId =:counterId")
    public List<ResponseReport> findResponseByCounter(@Param("laId") String laId, @Param("counterId") String counterId);

    @Query("SELECT r FROM ResponseReport r WHERE laId =:laId AND counterId =:counterId AND response =:response")
    public List<ResponseReport> findResponseByType(@Param("laId") String laId, @Param("counterId") String counterId
                                                        ,@Param("response") String response);

}