## Figure 만드는 코드 모아놓은 저장소
### pixel_error_boxplot
- flir_v1 dataset에 대해 ours와 타 방법론의 pixel error를 보여주는 box plot 그래프 생성 ipynb 코드
- source image의 gt points와 warped target image의 warped points 사이의 pixel error를 표현한 것 (L1 distance) 
![box_plot_y](https://user-images.githubusercontent.com/44229462/195511846-e2af91f9-34b4-43da-bbc5-0881a4c5990a.png)

### correspondence_points
- 제안한 dataset의 matching points의 분포도를 나타내 주는 figure 생성 코드
![correspondence_density (1)](https://user-images.githubusercontent.com/44229462/195512035-e1ad7633-1de3-421a-980b-dc523751947b.png)

### time_compare
- 타 방법론과 ours의 time, error를 비교해 주는 figure 생성 코드
![#ofparam (1)](https://user-images.githubusercontent.com/44229462/195512071-e010109a-6fed-4326-87ef-ef0f098db48e.png)

### warp_image
- source image와 warped target image를 overlap 해서 geometric difference 관찰이 가능한 matlab 코드
- overlap images를 frame단위로 모아서 video로 생성해 주는 matlab 코드
![09999](https://user-images.githubusercontent.com/44229462/195512327-b6402474-bbc1-4bd2-9807-38450284b807.png)
