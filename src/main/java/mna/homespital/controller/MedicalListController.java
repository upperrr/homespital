package mna.homespital.controller;

import mna.homespital.dto.*;
import mna.homespital.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class MedicalListController {

    @Autowired
    private ServletContext servletContext;

    @Autowired
    HttpSession session;

    @Autowired
    AllMedicalListService allmedListService;

    @Autowired
    MedicalListService mls;

    @Autowired
    DiagnosisService diagnosisService;

    @Autowired
    DoctorService doctorService;

    @Autowired
    MemberService memberService;

    @Autowired
    UserService userService;

    @Autowired(required = false) // 매개변수 없어도 OK. 나중에 고쳐야?
    Diagnosis diagnosis;



    //모든 진료항목 출력 (태영)

  @GetMapping("/list")
  public ModelAndView allmedicalList() {
    ModelAndView mv = new ModelAndView();
    try {
      List<AllMedical> amd = allmedListService.allMedList();

      mv.addObject("list", amd);
      mv.setViewName("user/userside/medicalList");
    } catch (Exception e) {
      e.printStackTrace();
    }
    return mv;
  }

    //원하는 진료항목출력 태영
    @PostMapping("/medicalSearch")
    public ModelAndView medicalSearch(@RequestParam(value="mediSearch") String mediSearch){
            ModelAndView mv = new ModelAndView();
            try{
                List<AllMedical> searchmd=allmedListService.searchMed(mediSearch);

                mv.addObject("list",searchmd);
                mv.setViewName("user/userside/medicalList");
            }catch(Exception e){
                e.printStackTrace();
            }
            return mv;
    }

//    //autocomplete controller 태영
//    @ResponseBody
//    @PostMapping("/mediSearch")
//    public String mediSearch(Model model){
//      try{
//          List<AllMedical> schmd=allmedListService.allMedList();
//
//          String dataMd=String.valueOf(schmd);
//          JSONArray jsa=new JSONArray();
//          JSONObject jso=new JSONObject();
//          jso.put("data",dataMd);
//
//      }catch(Exception e){
//          e.printStackTrace();
//      }
//      return ;
//    }


    //원하는 의사명 및 병원명 찾기 태영
    @PostMapping("/dohSearch")
    public ModelAndView dohSearch(@RequestParam(value="dhSearch") String dhSearch){
        ModelAndView mv=new ModelAndView();
        try{
            List<Doctor> doc=doctorService.getSearchDoh(dhSearch);
//            List<Doctor> docList = doctorService.getDocList(page, pageInfo);
            mv.addObject("doctorList",doc);
            mv.setViewName("user/userside/doctorList");
        }catch(Exception e){
            e.printStackTrace();
        }
        return mv;
    }
    //
    //의료진 찾기(의사 리스트)
    //    @SuppressWarnings("deprecation") // 의사 목업코드를 넣을때 쓴 코드. DAO로 실제 DB를 받아올 수 있다면 떼도 됨
    @GetMapping("/doctorList")
    public ModelAndView doctorList(@RequestParam(required = false, defaultValue = "1") int page) throws Exception {
        ModelAndView mv = new ModelAndView("user/userside/doctorList");
        PageInfo pageInfo = new PageInfo();
        List<Doctor> doctorList = doctorService.getDocList(page, pageInfo);

        mv.addObject("doctorList", doctorList);
        mv.addObject("pageInfo", pageInfo);
        return mv;
    }

//    //소연 : 의료진 목록보기(의사 리스트)
//    @GetMapping("/doctorList")
//    public ModelAndView doctorList(@RequestParam(required = false, defaultValue = "1") int page) throws Exception {
////        ModelAndView mv = new ModelAndView("user/userside/doctorList");
//        ModelAndView mav=new ModelAndView();
//        PageInfo pageInfo=new PageInfo();
//        pageInfo.setPage(page);
//        try {
//            List<Doctor> docList=doctorService.getDocList(page);
////            for(CommBoard comm : commList) {
////                Document doc=Jsoup.parse(comm.getContent());
////                Elements img= doc.select("img");
////                String src = img.attr("src");
////                comm.setContent(src);
//            }
//            pageInfo=doctorService.getPageInfo(pageInfo);
//            mav.addObject("pageInfo", pageInfo);
//            mav.addObject("commList", commList);
//
//            Map<Integer, User> userMap = new HashMap<Integer, User>();
//            for(int i=0; i<commList.size(); i++) {
//                int writerIdx = commList.get(i).getIdx();
//                User writerInfo = userService.getUserinfo(writerIdx);
//                userMap.put(writerIdx, writerInfo);
//            }
//            mav.addObject("userMap", userMap);
//            mav.setViewName("community/board/listform");
//        } catch(Exception e) {
//            e.printStackTrace();
//            mav.addObject("err", e.getMessage());
//            mav.setViewName("main/err");
//        }
//        return mav;
//    }



    //소연 : 의료진 상세보기(의사 디테일)
    @GetMapping("/doctorDetail/{doctor_number}")
    public ModelAndView doctorDetail(@PathVariable int doctor_number) {
        ModelAndView mav = new ModelAndView();

        try {
            //diagnosis객체에 있는 의사번호로 의사정보 가져와서 Doctor타입의 참조변수 doctor에 객체 저장
            Doctor doctor = doctorService.getDocInfo(diagnosis.getDoctor_number());
            //diagnosis객체에 있는 환자번호로 환자정보 가져와서 User타입의 참조변수 user에 객체 저장
            User user = userService.getUserInfo(diagnosis.getUser_number());

//            String emailCheck = (String) session.getAttribute("email");
//            // emailCheck(세션에 이메일이 있는지(로그인 한 상태인지) 확인해서 NUll이 아니면,
//            if (emailCheck != null) {
//                //세션에 있는 이메일과 유저객체에 있는 이메일이 일치 하지 않는다면, 404 페이지
//                if (!emailCheck.equals(user.getUser_email())) {
//                    System.out.println("이프문 안에 들어왔네?ㅋㅋ");
//                    mav.setViewName("/common/err");
//                    return mav;
//                }
//            } else { //세션에 이메일이 없으면, 404페이지
//                mav.setViewName("/common/err");
//                return mav;
//            }

            //소연 : 진료 시간 출력
            String work_time = doctor.getWorking_time();
            String[] work_timeArr = work_time.split(",");

            for (int i = 0; i < work_timeArr.length; i++) {
                System.out.println("work_timeArr = " + work_timeArr[i]); //9~17까지 콘솔에 뜸 [0], [work_timeArr.length-1]
            }

            int start_time = Integer.parseInt(work_timeArr[0]);
            int end_time = Integer.parseInt(work_timeArr[work_timeArr.length - 1]) + 1;

            if (end_time >= 13) {
                if (start_time >= 13) {
                    start_time -= 12;
                    end_time -= 12;
                    work_time = "오후 " + start_time + "시 ~ 오후 " + end_time + "시";
                    doctor.setWorking_time(work_time);
                } else if (start_time == 12) {
                    end_time -= 12;
                    work_time = "오후 " + start_time + "시 ~ 오후 " + end_time + "시";
                    doctor.setWorking_time(work_time);
                    System.out.println("work_time else if() = " + work_time);
                } else if (start_time < 12) {
                    end_time -= 12;
                    work_time = "오전 " + start_time + "시 ~ 오후 " + end_time + "시";
                    doctor.setWorking_time(work_time);
                    System.out.println("work_time else if() = " + work_time);
                }

            } else if (end_time <= 12) {
                work_time = "오전 " + start_time + "시 ~ 오전 " + end_time + "시";
                doctor.setWorking_time(work_time);
            }

            //준근 : 점심 시간 출력
            int lunch_time = Integer.parseInt(doctor.getLunch_time());
            //13시 이후 일 때  =>  오후 1시 ~ 오후 2시, 오후 2시 ~ 오후 3시 ... 로 출력
            if (lunch_time >= 13) {
                lunch_time -= 12;
                doctor.setLunch_time("오후 " + lunch_time + "시 ~ 오후 " + (lunch_time + 1) + "시");
            } else if (lunch_time == 12) { // 12시 일 때, 오후 12시 ~ 오후 1시
                doctor.setLunch_time("오후 " + lunch_time + "시 ~ 오후 " + (lunch_time - 11) + "시");
            } else if (lunch_time == 11) { //11시 일 때, 오전 11시 ~ 오후 12시
                doctor.setLunch_time("오전 " + lunch_time + "시 ~ 오후 " + (lunch_time + 1) + "시");
            } else if (lunch_time < 11) { // 10시 이전 일 때, 오전 10시 ~ 오전 11시, 오전 9시 ~ 오전 10시 ...로 출력
                doctor.setLunch_time("오전 " + lunch_time + "시 ~ 오전 " + (lunch_time + 1) + "시");
            }

        } catch (Exception e) {
            e.printStackTrace();
            mav.addObject("err", e.getMessage());
            mav.setViewName("/common/err");
        }

        return mav;

    }















}
