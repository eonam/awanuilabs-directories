import { useMenu } from "../contexts/Menu"
import Hamburger from "../icons/hamburger"

export default function Heading({children}) {
  const { setMenuOpen } = useMenu()

  const handleClick = () => {
    setMenuOpen(false)
  }

  return (
    <div className="z-10 sticky top-0 flex flex-col gap-4 border-b bg-white px-4 py-6">
      <div className="flex justify-between gap-4">
        <a href="/" className="flex flex-col gap-2" title="Homepage">
          <img title="Awanui Labs Logo" src="/assets/awanui-labs.svg"/>
          <h2 className="text-xl font-bold">Collection Centres</h2>
        </a>

        <button className="block md:hidden" aria-label="Close Menu" onClick={handleClick}>
          <Hamburger/>
        </button>
      </div>
      {children}
    </div>
  )
}
