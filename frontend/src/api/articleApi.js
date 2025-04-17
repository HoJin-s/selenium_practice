import axios from "axios";

const API = axios.create({
  baseURL: "https://hojin-news-server.onrender.com/",
  headers: {
    Accept: "*/*",
  },
});

// days article list 조회 api
export const DaysArticles = async (today) => {
    try {
        // url 인코딩 / 한글이 깨지기 때문에 UTF-8 로 인코딩
        const day = encodeURIComponent(today); 
        const response = await API.get(`articles/${day}`);
        return response.data;
    } catch (error) {
        console.error("Error get days articles: ", error);
        throw error;
    }
};

// id article list 조회 api
export const IdArticles = async (id) => {
    try {
        const response = await API.get(`articles/${id}`);
        return response.data;
    } catch (error) {
        console.error("Error get id articles: ", error);
        throw error;
    }
};



    