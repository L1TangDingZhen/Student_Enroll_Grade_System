
import request from "./request"
import axios from 'axios';

console.log("^^^^^^^6666^^^^^^^")
// console.log('Base API URL:', process.env.VUE_APP_API_BASE_URL);

const apiClient = axios.create({
    // baseURL: process.env.VUE_APP_BASE_URL, // Setting the base URL for all requests
    headers: {
        'Content-Type': 'application/json'
        // 'Authorization': 'Bearer ' + localStorage.getItem('token')
    }
});

export default apiClient;


// 账户
export function reqRegister(data:any){
    return apiClient.post(`https://www.thezbr.org/api/register`, data);
}

export function reqLogin(credentials:any){
    // return request({url:`/login`, method:'post', data:data})
    return apiClient.post(`https://www.thezbr.org/api/login`, credentials);
}

export function reqMe(){
    return apiClient.get(`https://www.thezbr.org/api/me`,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
}

export function reqAll(){
    return apiClient.get(`https://www.thezbr.org/api/num`,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
}

export function reqDelete(id:number){
    return apiClient.delete(`https://www.thezbr.org/api/user`,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
    // return request({url:`/api/num/${id}`, method:'delete'})
}

export function reqUpdate(data:any){
    return apiClient.patch(`https://www.thezbr.org/api/user`, data,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
    // return request({url:`/api/num`, method:'patch', data:data})
}

//课程

export function reqCourseList(){
    return apiClient.get(`https://www.thezbr.org/api/course`, {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
}

export function reqCourseListOne(id:number){
    return apiClient.get(`https://www.thezbr.org/api/course/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return axios.get(`/api/course/${id}`, {
    //     headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    // });
    // return request({url:`/api/course/${id}`, method:'get'})
}

export function reqCreateCourse(data:any){

    return apiClient.post(`https://www.thezbr.org/api/course`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course`, method:'post', data:data})
}

export function reqDeleteCourse(id:number){
    return apiClient.delete(`https://www.thezbr.org/api/course/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course/${id}`, method:'delete'})
}


export function reqUpdateCourse(data:any, id:number){
    return apiClient.patch(`https://www.thezbr.org/api/course/${id}`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course/${id}`, method:'patch', data:data})
}

//grade

export function reqGradeList(){
    return apiClient.get(`https://www.thezbr.org/api/grade`, {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade`, method:'get'})
}

export function reqGradeListOne(id:number){
    return apiClient.get(`https://www.thezbr.org/api/grade/${id}`, {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade/${id}`, method:'get'})
}

export function reqCreateGrade(data: any) {
    return apiClient.post(`https://www.thezbr.org/api/grade`, data, {
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
  }

export function reqDeleteGrade(id:number){

    return apiClient.delete(`https://www.thezbr.org/api/grade/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade/${id}`, method:'delete'})
}
export function reqUpdateGrade(data: any, gradeId: number) {
    return apiClient.patch(`https://www.thezbr.org/api/grade/${gradeId}`, data, {
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

//enroll
export function reqEnrollList(){
    return apiClient.get(`https://www.thezbr.org/api/enroll`, {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/enroll`, method:'get'})
}

export function reqCreateEnroll(data:any){
    return apiClient.post(`https://www.thezbr.org/api/enroll`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
}

export function reqDeleteEnroll(id:number){
    return apiClient.delete(`https://www.thezbr.org/api/enroll/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    }); 

    // return request({url:`/api/enroll/${id}`, method:'delete'})
}

export function reqUpdateEnroll(data:any, id:number){
    return apiClient.patch(`https://www.thezbr.org/api/enroll/${id}`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/enroll/${id}`, method:'patch', data:data})
}

export function reqTeacherCourses(){
    // Replace with your actual endpoint and logic to fetch the teacher's courses
    return apiClient.get(`https://www.thezbr.org/api/teacher/courses`, { 
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

export function reqEnrolledStudents(courseId: string) {
    return apiClient.get(`https://www.thezbr.org/api/course/${courseId}/students`,{
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

export function reqUpdateCourseInfo(courseId: string, data: any) {
    return apiClient.patch(`https://www.thezbr.org/api/course/${courseId}`, data, {
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
  }

export function reqCreateTeacherCourse(data: any) {
    return apiClient.post(`https://www.thezbr.org/api/teacher/create_course`, data, {
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
    }

    