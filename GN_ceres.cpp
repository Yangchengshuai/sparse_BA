#include <iostream>
#include <opencv2/core/core.hpp>
#include <opencv2/highgui/highgui.hpp>
#include <ceres/ceres.h>
#include <chrono>

using namespace std;

// 代价函数的计算模型
// struct CURVE_FITTING_COST
// {
//     CURVE_FITTING_COST ( double x, double y ) : _x ( x ), _y ( y ) {}
//     // 残差的计算
//     template <typename T>
//     bool operator() (
//         const T* const abc,     // 模型参数，有3维,也就是要要优化的参数块，
//         T* residual ) const     // 残差
//     {
//         residual[0] = T ( _y ) - ceres::exp ( abc[0]*T ( _x ) *T ( _x ) + abc[1]*T ( _x ) + abc[2] ); // y-exp(ax^2+bx+c)
//         return true;
//     }
//     const double _x, _y;    // x,y数据
// };

// int main ()
// {
//     double a=1.0, b=2.0, c=1.0;         // 真实参数值
//     int N=100;                          // 数据点
//     double w_sigma=1.0;                 // 噪声Sigma值
//     cv::RNG rng;                        // OpenCV随机数产生器
//     double abc[3] = {0,0,0};            // abc参数的估计值，这里初始化为0

//     vector<double> x_data, y_data;      // 定义观测数据

//     cout<<"generating data: "<<endl;
//     for ( int i=0; i<N; i++ )
//     {
//         double x = i/100.0;
//         x_data.push_back ( x );
//         y_data.push_back (
//             exp ( a*x*x + b*x + c ) + rng.uniform(-0.5f, 0.5f)
//         );
//         cout<<x_data[i]<<" "<<y_data[i]<<endl;//产生观测数据
//     }

//     // 构建最小二乘问题
//     ceres::Problem problem;
//     for ( int i=0; i<N; i++ )
//     {
//         problem.AddResidualBlock (     // 向问题中添加误差项
//         // 使用自动求导，模板参数：误差类型，输出维度，输入维度，维数要与前面struct中一致
//             new ceres::AutoDiffCostFunction<CURVE_FITTING_COST, 1, 3> (
//                 new CURVE_FITTING_COST ( x_data[i], y_data[i] )//　观测数据
//             ),
//             nullptr,            // 核函数，这里不使用，为空
//             abc                 // 待估计参数
//         );
//     }

//     // 配置求解器
//     ceres::Solver::Options options;     // 这里有很多配置项可以填
//     options.linear_solver_type = ceres::DENSE_QR;  // 增量方程如何求解
//     options.minimizer_progress_to_stdout = true;   // 输出到cout

//     ceres::Solver::Summary summary;                // 优化信息
//     chrono::steady_clock::time_point t1 = chrono::steady_clock::now();
//     ceres::Solve ( options, &problem, &summary );  // 开始优化
//     chrono::steady_clock::time_point t2 = chrono::steady_clock::now();
//     chrono::duration<double> time_used = chrono::duration_cast<chrono::duration<double>>( t2-t1 );
//     cout<<"solve time cost = "<<time_used.count()<<" seconds. "<<endl;

//     // 输出结果
//     cout<<summary.BriefReport() <<endl;
//     cout<<"estimated a,b,c = ";
//     for ( auto a:abc ) cout<<a<<" ";
//     cout<<endl;

//     return 0;
// }

// 代价函数的计算模型
struct CURVE_FITTING_COST{
    double X,Y;
    CURVE_FITTING_COST(double x,double y):X(x),Y(y){}
    template <typename T>
    bool operator()(const T* ab,T*residual)const// 必须有const
    {
       residual[0]=T(Y)- (ab[0]*X+ab[1]);// y-(ax+b)
       return true;
    }
};

int main(){
    // 数据
    int N=10;
    vector<double> x_data,y_data;
    for(int i=0;i<N;i++){
        double x=i/10;
        x_data.push_back(x);
        y_data.push_back(2*x+1+pow(i,0.1));
    }
    double ab[2]={0,0};
    // 构建problem
    ceres::Problem problem;
    for(int i=0;i<N;i++){
        problem.AddResidualBlock(
            new ceres::AutoDiffCostFunction<CURVE_FITTING_COST,1,3>(
                new CURVE_FITTING_COST(x_data[i],y_data[i])
            ),
            nullptr,
            ab
        );
    }
    // 配置求解器
    ceres::Solver::Options options;
    options.linear_solver_type=ceres::DENSE_QR;
    options.minimizer_progress_to_stdout=true;

    ceres::Solver::Summary summary;
    ceres::Solve(options,&problem,&summary);//开始优化
    cout<<summary.BriefReport()<<endl;
    for ( auto a:ab) cout<<a<<" ";
    cout<<endl;
    return 0;
}