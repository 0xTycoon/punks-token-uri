// SPDX-License-Identifier: MIT
// Mock contract for testing
pragma solidity ^0.8.17;

/**
 *   ____                  _                          _          ____        _
 *  / ___|_ __ _   _ _ __ | |_ ___  _ __  _   _ _ __ | | _____  |  _ \  __ _| |_ __ _
 * | |   | '__| | | | '_ \| __/ _ \| '_ \| | | | '_ \| |/ / __| | | | |/ _` | __/ _` |
 * | |___| |  | |_| | |_) | || (_) | |_) | |_| | | | |   <\__ \ | |_| | (_| | || (_| |
 *  \____|_|   \__, | .__/ \__\___/| .__/ \__,_|_| |_|_|\_\___/ |____/ \__,_|\__\__,_|
 *             |___/|_|            |_|
*  On-chain Cryptopunk images and attributes - mocking contract
*/


contract CryptoPunksDataMock {

    /**
     * The Cryptopunk image for the given index, in SVG format.
     * In the SVG, each "pixel" is represented as a 1x1 rectangle.
     * @param index the punk index, 0 <= index < 10000
     */
    function punkImageSvg(uint16 index) external view returns (string memory svg) {

        if (index == 8348) {
            return 'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" version="1.2" viewBox="0 0 24 24"><rect x="7" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="8" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="9" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="10" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="11" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="12" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="13" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="14" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="15" y="1" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="6" y="2" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="7" y="2" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="8" y="2" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="9" y="2" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/>... blah blah blah</svg>';
        }
        if (index == 741) {
            return 'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" version="1.2" viewBox="0 0 24 24"><rect x="8" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="9" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="10" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="11" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="12" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="13" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="14" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="7" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="8" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="9" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="10" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="11" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="12" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="13" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="14" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="15" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="6" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="7" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="8" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="9" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#8b532cff"/><rect x="10" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="11" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="12" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="13" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="14" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="15" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#713f1dff"/><rect x="16" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="6" y="8" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/>... blah blah blah ...</svg>';
        }
        if (index == 4513) {
            return 'data:image/svg+xml;utf8,<svg xmlns="http://www.w3.org/2000/svg" version="1.2" viewBox="0 0 24 24"><rect x="9" y="3" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="10" y="3" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="11" y="3" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="12" y="3" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="13" y="3" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="11" y="4" width="1" height="1" shape-rendering="crispEdges" fill="#000000ff"/><rect x="8" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="9" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="10" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="11" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="12" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="13" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#d60404ff"/><rect x="14" y="5" width="1" height="1" shape-rendering="crispEdges" fill="#d60404ff"/><rect x="7" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="8" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="9" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/><rect x="10" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="11" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="12" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#e4eb17ff"/><rect x="13" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#d60404ff"/><rect x="14" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#d60404ff"/><rect x="15" y="6" width="1" height="1" shape-rendering="crispEdges" fill="#d60404ff"/><rect x="6" y="7" width="1" height="1" shape-rendering="crispEdges" fill="#0060c3ff"/>... blah blah blah ...</svg>';
        }
        return "";
    }

    /**
     * The Cryptopunk attributes for the given index.
     * The attributes are a comma-separated list in UTF-8 string format.
     * The first entry listed is not technically an attribute, but the "head type" of the Cryptopunk.
     * @param index the punk index, 0 <= index < 10000
     */
    function punkAttributes(uint16 index) external view returns (string memory text) {
        if (index == 8348) {
            return "Male 2, Buck Teeth, Mole, Big Beard, Earring, Top Hat, Cigarette, Classic Shades";
        }
        if (index == 741) {
            return "Male 1";
        }
        if (index == 4513) {
            return "Zombie, Luxurious Beard, Earring, Beanie";
        }
        return "";
    }

}