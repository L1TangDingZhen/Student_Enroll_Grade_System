
import request from "./request"
import axios from 'axios';

const apiClient = axios.create({
    // baseURL: 'http://127.0.0.1:8000', // Setting the base URL for all requests
    headers: {
        'Content-Type': 'application/json'
        // 'Authorization': 'Bearer ' + localStorage.getItem('token')
    }
});

export default apiClient;


// 账户
export function reqRegister(data:any){
    return apiClient.post('http://127.0.0.1:8000/api/register', data);
}

export function reqLogin(credentials:any){
    // return request({url:`/login`, method:'post', data:data})
    return apiClient.post('http://127.0.0.1:8000/api/login', credentials);
}

export function reqMe(){
    return axios.get('http://127.0.0.1:8000/api/me', 
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
}

export function reqAll(){
    return axios.get('http://127.0.0.1:8000/api/num', 
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
}

export function reqDelete(id:number){
    return axios.delete(`http://127.0.0.1:8000/api/user`,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
    // return request({url:`/api/num/${id}`, method:'delete'})
}

export function reqUpdate(data:any){
    return axios.patch(`http://127.0.0.1:8000/api/user`, data,
    {headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}});
    // return request({url:`/api/num`, method:'patch', data:data})
}

//课程

export function reqCourseList(){
    return axios.get('http://127.0.0.1:8000/api/course', {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
}


export function reqCourseListOne(id:number){
    return axios.get(`http://127.0.0.1:8000/api/course/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return axios.get(`/api/course/${id}`, {
    //     headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    // });
    // return request({url:`/api/course/${id}`, method:'get'})
}

export function reqCreateCourse(data:any){

    return axios.post('http://127.0.0.1:8000/api/course', data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course`, method:'post', data:data})
}

export function reqDeleteCourse(id:number){
    return axios.delete(`http://127.0.0.1:8000/api/course/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course/${id}`, method:'delete'})
}


export function reqUpdateCourse(data:any, id:number){
    return axios.patch(`http://127.0.0.1:8000/api/course/${id}`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/course/${id}`, method:'patch', data:data})
}

//grade

export function reqGradeList(){
    return axios.get('http://127.0.0.1:8000/api/grade', {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade`, method:'get'})
}

export function reqGradeListOne(id:number){
    return axios.get(`http://127.0.0.1:8000/api/grade/${id}`, {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade/${id}`, method:'get'})
}

export function reqCreateGrade(data: any) {
    return axios.post('http://127.0.0.1:8000/api/grade', data, {
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
  }

export function reqDeleteGrade(id:number){

    return axios.delete(`http://127.0.0.1:8000/api/grade/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/grade/${id}`, method:'delete'})
}
export function reqUpdateGrade(data: any, gradeId: number) {
    return apiClient.patch(`http://127.0.0.1:8000/api/grade/${gradeId}`, data, {
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

//enroll
export function reqEnrollList(){
    return axios.get('http://127.0.0.1:8000/api/enroll', {
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/enroll`, method:'get'})
}

export function reqCreateEnroll(data:any){
    return axios.post('http://127.0.0.1:8000/api/enroll', data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
}

export function reqDeleteEnroll(id:number){
    return axios.delete(`http://127.0.0.1:8000/api/enroll/${id}`, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    }); 

    // return request({url:`/api/enroll/${id}`, method:'delete'})
}

export function reqUpdateEnroll(data:any, id:number){
    return axios.patch(`http://127.0.0.1:8000/api/enroll/${id}`, data, { 
        headers: {Authorization: `Bearer ${localStorage.getItem('token')}`}
    });
    // return request({url:`/api/enroll/${id}`, method:'patch', data:data})
}

export function reqTeacherCourses(){
    // Replace with your actual endpoint and logic to fetch the teacher's courses
    return axios.get('http://127.0.0.1:8000/api/teacher/courses', { 
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

export function reqEnrolledStudents(courseId: string) {
    return axios.get(`http://127.0.0.1:8000/api/course/${courseId}/students`, {
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
}

export function reqUpdateCourseInfo(courseId: string, data: any) {
    return axios.patch(`http://127.0.0.1:8000/api/course/${courseId}`, data, {
      headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
  }

export function reqCreateTeacherCourse(data: any) {
    return axios.post('http://127.0.0.1:8000/api/teacher/create_course', data, {
        headers: { Authorization: `Bearer ${localStorage.getItem('token')}` }
    });
    }

    