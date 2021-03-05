const selectElem = document.querySelector('select');
const divElem = document.querySelector('div');
const slider = document.querySelector('input');
const output = document.querySelector('output');
const curValue = document.querySelector('p code');

selectElem.addEventListener('change', () => {
  setSlider(selectElem.value);
  setDiv(selectElem.value);
});

slider.addEventListener('input', () => {
  setDiv(selectElem.value);
});

function setSlider(filter) {
  if(filter === 'blur') {
    slider.value = 0;
    slider.min = 0;
    slider.max = 30;
    slider.step = 1;
    slider.setAttribute('data-unit', 'px');
  } else if(filter === 'brightness' || filter === 'contrast' || filter === 'saturate') {
    slider.value = 1;
    slider.min = 0;
    slider.max = 4;
    slider.step = 0.05;
    slider.setAttribute('data-unit', '');
  } else if(filter === 'drop-shadow') {
    slider.value = 0;
    slider.min = -20;
    slider.max = 40;
    slider.step = 1;
    slider.setAttribute('data-unit', 'px');
  } else if(filter === 'opacity') {
    slider.value = 1;
    slider.min = 0;
    slider.max = 1;
    slider.step = 0.01;
    slider.setAttribute('data-unit', '');
  } else if(filter === 'grayscale' || filter === 'invert' || filter === 'sepia') {
    slider.value = 0;
    slider.min = 0;
    slider.max = 1;
    slider.step = 0.01;
    slider.setAttribute('data-unit', '');
  } else if(filter === 'hue-rotate') {
    slider.value = 0;
    slider.min = 0;
    slider.max = 360;
    slider.step = 1;
    slider.setAttribute('data-unit', 'deg');
  }
}

function setDiv(filter) {
  if(filter === 'drop-shadow') {
    divElem.style.filter = `${selectElem.value}(${Math.round(slider.value)}${slider.getAttribute('data-unit')} ${Math.round(slider.value)}${slider.getAttribute('data-unit')} ${Math.round(Math.abs(slider.value/2))}${slider.getAttribute('data-unit')})`;
  } else {
    divElem.style.filter = `${selectElem.value}(${slider.value}${slider.getAttribute('data-unit')}`;
  }

  updateOutput();
  updateCurValue();
}

function updateOutput() {
  output.textContent = slider.value;
}

function updateCurValue() {
  curValue.textContent = `filter: ${divElem.style.filter}`;
}

setSlider(selectElem.value);
setDiv(selectElem.value);