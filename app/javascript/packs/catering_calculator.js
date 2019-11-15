console.log("Hello from calculator")


const checkinDay = document.querySelector("#booking_check_in_date_time_3i")
const checkinHour = document.querySelector("#booking_check_in_date_time_4i")

const checkoutDay = document.querySelector("#booking_check_out_date_time_3i")
const checkoutHour = document.querySelector("#booking_check_out_date_time_4i")

const totalContainer = document.querySelector("#total")
let total = 0
const calculatePrice = (event) => {
  const checkinDayValue = checkinDay.value
  const checkinHourValue = checkinHour.value

  const checkoutDayValue = checkoutDay.value
  const checkoutHourValue = checkoutHour.value
  console.log(checkinHourValue,checkoutHourValue )
  if (checkoutDayValue - checkinDayValue === 0) {
    total = checkoutHourValue - checkinHourValue
  } else if (checkoutDayValue - checkinDayValue > 0) {
    total = ((checkoutDayValue - checkinDayValue) * 24) + (checkoutHourValue - checkinHourValue)
  }
  totalContainer.innerText = `${total * 7} dollars`
  console.log(checkoutDayValue, checkinDayValue)
  console.log(total)
  totalPrice = total * 7
  document.querySelector("#price").value = totalPrice
}

checkinDay.addEventListener("change", calculatePrice)
checkinHour.addEventListener("change", calculatePrice)
checkoutDay.addEventListener("change", calculatePrice)
checkoutHour.addEventListener("change", calculatePrice)
