/*
playername
playerbackNum
playerposition
playerheight
playerweight
playerbrithday
playerimg
clubrank
clubgoalplayer_count
clubgoalplayer_player
clubhelpplayer_count
clubhelpplayer_player
*/
const playerName = document.getElementById("playername");
const playerBackNum = document.getElementById("playerbackNum");
const playerPosition = document.getElementById("playerposition");
const playerHeight = document.getElementById("playerheight");
const playerWeight = document.getElementById("playerweight");
const playerImg = document.getElementById("playerimg");
let namelist=[];
let datalist=[];
/*const clubGoalplayerCNT=document.getElementsByClassName("clubgoalplayer_count");
const clubGoalplayerPLY=document.getElementsByClassName("clubgoalplayer_player");
const clubHelpplayerCNT=document.getElementsByClassName("clubhelpplayer_count");
const clubHelpplayerPLY=document.getElementsByClassName("clubhelpplayer_player");*/
(() => {
    $.ajax({
        url: "showPlayer",
        type: "get",
        data: "playername=이동경",
        dataType: 'json',
        success: (data) => {
            playerName.innerText = data.player_name;
            playerImg.setAttribute('src', data.player_imgurl);
            playerImg.className = "player2-img";
            playerBackNum.innerText = data.player_uniform_number;
            playerPosition.innerText = data.player_position;
            playerWeight.innerText = data.player_weight;
            playerHeight.innerText = data.player_height;
            playerbrithday.innerText=data.player_birthdate;
            playerbargragh(data.player_idx);
            playerRadarchart(5,4,16,2,5,1,3,4);
        }, erro: () => {
            alert("통신오류!");
        }
    })

})();
$(document).ready(function () {
    //선호 선수 선택시
    $('#playerselect').change(function () {
        var selectedPlayer = $('#playerselect option:selected').text();
        $("#player-data").empty();
        /*console.log(selectedPlayer);*/
        $.ajax({
            url: "showPlayer",
            type: "get",
            data: "playername=" + selectedPlayer,
            dataType: 'json',
            success: (data) => {
                playerName.innerText = data.player_name;
                playerImg.setAttribute('src', data.player_imgurl);
                playerImg.className = "player2-img";
                playerBackNum.innerText = data.player_uniform_number;
                playerPosition.innerText = data.player_position;
                playerWeight.innerText = data.player_weight;
                playerHeight.innerText = data.player_height;
                playerbrithday.innerText=data.player_birthdate;
                playerbargragh(data.player_idx);
                var who=data.player_idx;
                if(who==270){
                    playerRadarchart(5,4,16,2,5,1,3,4);
                }else if(who==259){
                    playerRadarchart(3,2,4,0,0,0,0,0);
                }else if(who==276){
                    playerRadarchart(4,1,1,0,2,2,2,1);
                }else if(who==272){
                    playerRadarchart(4,0,4,1,1,0,3,5);
                }else if (who==268){
                    playerRadarchart(3,0,2,1,3,2,2,6);
                }else{
					playerRadarchart(2,4,1,1,1,0,0,2);
				}
            }, erro: () => {
                alert("통신오류!");
            }
        })
    });
});
function playerbargragh(idx) {
    $.ajax({
        url: "showPlayerDetail",
        type: "get",
        data: "playeridx=" + idx,
        dataType: 'json',
        success: (data)=>{
            namelist=['츨전수', '득점', '도움', '골킥', '코너킥', '파울', '아웃스윙어', '슈팅', '실점', '경고', '퇴장'];
            datalist=[data.appearance,data.goal,data.as,data.gk,data.ck,data.fo,data.os,data.st,data.loss,data.caution,data.ejection]
        },erro:()=>{
            namelist='연결오류';
            datalist=[0,0,0,0,0,0,0,0,0,0,0]
        }
    })
    setTimeout(()=>{
        var options = {
            series: [{
                name: '',
                data: datalist
            }],
            chart: {
                type: 'bar',
                height: 350
            },
            plotOptions: {
                bar: {
                    borderRadius: 4,
                    horizontal: true,
                }
            },
            dataLabels: {
                enabled: false
            },
            xaxis: {
                categories: namelist
            },
            markers: {
                show: true, // 마커 보이기
                size: 5 // 마커 크기 설정
            },
            colors: ['#ee3224'] // 그래프 선의 색상
        };
        var chart = new ApexCharts(document.querySelector("#player-data"), options);
        chart.render();
    },100);

}

function playerRadarchart(round,goal,st,as,keypass,dribble,tackle,intercept){
    var options = {
        series: [{
          name: '',
          data: [round, goal, st, as, keypass, dribble, tackle, intercept] // 출전경기수, 득점, 슈팅, 도움, 패스 성공률, 드리블, 태클, 인터셉트
        }],
        chart: {
          height: 350,
          type: 'radar',
        },
        xaxis: {
          categories: ['출전경기수', '득점', '슈팅', '도움', '키패스', '드리블', '태클', '인터셉트']
        },
        yaxis: {
          min: 0,
          max: 20,
          tickAmount: 2, // 수정된 부분
          labels: {
            formatter: function(val) {
              return val.toFixed(0); // 소수점 제거
            }
          },
        },
        
        colors: ['#0067ac'] // 그래프 선의 색상
      };
      $("#player-avg").empty();
      setTimeout(()=>{
        var chart = new ApexCharts(document.querySelector("#player-avg"), options);
        chart.render();
      },100);
}