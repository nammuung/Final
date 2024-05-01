
	const call = new bootstrap.Modal(document.getElementById("call"))


function screen(){
    // 현재 화면의 너비와 높이를 가져옵니다.
    let screenWidth = window.screen.width;
    let screenHeight = window.screen.height;

    // 창의 너비와 높이를 설정합니다.
    let widthPercentage = 50; // 화면 너비의 50%
    let heightPercentage = 100; // 화면 높이의 100%
    let width = (screenWidth * widthPercentage) / 100;
    let height = (screenHeight * heightPercentage) / 100;

    // 창의 위치를 계산하여 화면 중앙에 위치시킵니다.
    let left = (screenWidth - width) / 2;
    let top = (screenHeight - height) / 2;

    // 창의 크기와 위치를 설정합니다.
    return `width=${width}, height=${height}, left=${left}, top=${top}`;
}

function openbonus(id) {
	let options = screen();
    let relativePath = '/document/call?id='+id; // 문서의 상대 경로를 설정합니다.
    call.hide();    
    window.close('.document/exList/bous');
    

    window.open(relativePath, '_blank', options);
}

const categori_sel = document.querySelectorAll(".BOARDCATEGORY");

const cateList = document.getElementById("cateList");

const params = new URLSearchParams(window.location.search);
const category = params.get("category");
console.log(category);

console.log(categori_sel[0].dataset)

for(let i = 0 ; i < categori_sel.length ; i++){
	categori_sel[i].classList.remove("active")
	if(categori_sel[i].dataset.category == category){
			categori_sel[i].classList.add("active")
	}
}

const close = document.querySelector(".text-start")

