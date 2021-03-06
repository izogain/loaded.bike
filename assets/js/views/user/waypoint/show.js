import MainView       from "../../main"
import Map            from "../../map"
import ElevationGraph from "../../elevation_graph"

export default class UserWaypointShowView extends MainView {
  mount(){
    super.mount()

    var map = new Map()
    map.init()
    map.loadMarkers()
    map.centerMarkers()
    map.addPath()

    let graph = new ElevationGraph()
    graph.init()
  }

  unmount(){
    super.unmount()
  }
}
