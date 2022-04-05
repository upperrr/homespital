package mna.homespital.service;

import mna.homespital.dto.Doctor;
import mna.homespital.dto.PageInfo;

import java.util.List;

public interface DoctorService {
    // 의료진 찾기 - 의료진 목록 보기 (훈)
    public List<Doctor> getDocList(int page, PageInfo pageInfo) throws Exception;

//    선택한 의사 정보 가져오기 ( 인성 )
    Doctor getDoctor(int doctor_number) throws Exception;
}
