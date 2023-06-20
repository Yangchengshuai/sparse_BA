#include<vector>
#include<iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>

using namespace std;

//y=ax+b
void lineplofit(vector<cv::Point2f> points_list, int points_num, float* a, float* b)
{
    float sum_x2 = 0.0;
    float sum_y = 0.0;
    float sum_x = 0.0;
    float sum_xy = 0.0;

    int num = points_num;

    int i;
    for (i = 0; i < num; ++i)
    {
        sum_x2 += points_list[i].x * points_list[i].x;
        sum_y += points_list[i].y;
        sum_x += points_list[i].x;
        sum_xy += points_list[i].x * points_list[i].y;
    }

    float tmp = num * sum_x2 - sum_x * sum_x;
    if (abs(tmp) > 0.000001f)
    {
        *a = (num * sum_xy - sum_x * sum_y) / tmp;
        *b = (sum_x2 * sum_y - sum_x * sum_xy) / tmp;
    }
    else
    {
        *a = 0;
        *b = 0;
    }
}

int main(){

    vector< cv::Point2f > points;
    points.push_back(cv::Point2f(1.0f,2.0f));
    points.push_back(cv::Point2f(2.0f,4.0f));
    points.push_back(cv::Point2f(3.0f,5.0f));
    points.push_back(cv::Point2f(4.0f,9.0f));
    
    float a,b;
    lineplofit(points,points.size(),&a,&b);
    cout<<"a= ";
    cout<<a<<endl;
    cout<<"b= ";
    cout<<b<<endl;
    return 0;

}