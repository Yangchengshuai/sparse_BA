#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <Eigen/Core>
#include <Eigen/Dense>

using namespace std;
using namespace Eigen;

// int main() {
//     double ar = 1.0, br = 2.0, cr = 1.0;         // 真实参数值
//     double ae = 2.0, be = -1.0, ce = 5.0;        // 估计参数值
//     int N = 100;                                 // 数据点
//     double w_sigma = 1.0;                        // 噪声Sigma值
//     cv::RNG rng;                                 // OpenCV随机数产生器

//     vector<double> x_data, y_data;      // 数据
//     for (int i = 0; i < N; i++) {
//         double x = i / 100.0;
//         x_data.push_back(x);
//         y_data.push_back(exp(ar * x * x + br * x + cr) + rng.gaussian(w_sigma));
//     }

//     // 开始Gauss-Newton迭代
//     int iterations = 100;    // 迭代次数
//     double cost = 0, lastCost = 0;  // 本次迭代的cost和上一次迭代的cost

//     for (int iter = 0; iter < iterations; iter++) {

//         Matrix3d H = Matrix3d::Zero();             // Hessian = J^T J in Gauss-Newton
//         Vector3d b = Vector3d::Zero();             // bias
//         cost = 0;

//         for (int i = 0; i < N; i++) {
//             double xi = x_data[i], yi = y_data[i];  // 第i个数据点
//             // start your code here
//             double error = 0;   // 第i个数据点的计算误差
//             error = yi-exp(ae*xi*xi+be*xi+ce); // 填写计算error的表达式
//             Vector3d J; // 雅可比矩阵
//             J[0] = -xi*xi*exp(ae*xi*xi+be*xi+ce);  // de/da
//             J[1] = -xi*exp(ae*xi*xi+be*xi+ce);  // de/db
//             J[2] = -exp(ae*xi*xi+be*xi+ce);  // de/dc

//             H += J * J.transpose(); // GN近似的H
//             b += -error * J;
//             // end your code here

//             cost += error * error;
//         }

//         // 求解线性方程 Hx=b，建议用ldlt
//  	// start your code here
//         Vector3d dx;
//         // dx = H.inverse()*b;
//         //dx = H.colPivHouseholderQr().solve(b);    //QR分解，可加快求解速度
//         dx=H.ldlt().solve(b);//ldlt分解，可加快求解速度
// 	// end your code here

//         if (isnan(dx[0])) {
//             cout << "result is nan!" << endl;
//             break;
//         }

//         if (iter > 0 && cost > lastCost) {
//             // 误差增长了，说明近似的不够好
//             cout << "cost: " << cost << ", last cost: " << lastCost << endl;
//             break;
//         }

//         // 更新abc估计值
//         ae += dx[0];
//         be += dx[1];
//         ce += dx[2];

//         lastCost = cost;

//         cout << "total cost: " << cost << endl;
//     }

//     cout << "estimated abc = " << ae << ", " << be << ", " << ce << endl;
//     return 0;
// }

int main(){
    // 数据
    vector<double> x_data, y_data;
    int N=10;// 数据量
    for(int i=0;i<N;i++){
        double x=i/10.0;
        x_data.push_back(x);
        y_data.push_back(2*x+1+pow(i,0.1));
    }
    // 开始迭代
    double k=1,c=0;
    int iterations=100;
    for (int i = 0; i < iterations; i++)
    {
        Matrix2d H=Matrix2d::Zero();
        Vector2d b=Vector2d::Zero();
        double cost=0,last_cost=0;
        for (int i = 0; i < N; i++)
        {
            
            double xi=x_data[i];
            double yi=y_data[i];
            double error = yi-(k*xi+c);
            Vector2d J;
            J[0]=-xi;
            J[1]=-1;
            H+=J*J.transpose();
            b+=-error*J;
            cost+=error*error;
        }

        if(i>0 && cost>last_cost){
            break;
        }
        
        Vector2d dx;
        dx=H.inverse()*b;
        k = k+ dx[0];
        c = c+ dx[1];
        last_cost=cost;
    }
    cout<<"k= ";
    cout<<k<<endl;
    cout<<"b= ";
    cout<<c<<endl;
    return 0;
    
}