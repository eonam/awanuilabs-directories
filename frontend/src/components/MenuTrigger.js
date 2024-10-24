import { useMenu } from "../contexts/Menu"
import Hamburger from "../icons/hamburger"

export default function MenuTrigger() {
  const { isMenuOpen, setMenuOpen } = useMenu()

  const handleClick = () => {
    setMenuOpen(true)
  }

  return (
    <button className={`duration-300 block ${isMenuOpen ? `opacity-0` : `opacity-100`} md:opacity-0 z-30 fixed top-[26px] left-1/2 -translate-x-[27px] bg-white px-3 py-[5px]`} aria-label="Close Menu" onClick={handleClick}>
      <Hamburger/>
    </button>
  )
}