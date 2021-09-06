// ------- product image modal ---------------

function openModal(e) {
  const modal = document.getElementById("myModal");
  // Get the image and insert it inside the modal - use its "alt" and "src" text as a caption
  const modalImg = document.getElementById("img01");
  const captionText = document.getElementById("caption");
  modal.style.display = "block";
  modalImg.src = e.src;
  captionText.innerHTML = e.alt;
}

function closeModal(e) {
  const close = document.getElementsByClassName("modal")[0];
  const modal = document.getElementById("myModal");
  modal.style.display = "none";
}
