xquery version "3.0"  encoding "UTF-8";

module namespace p = "memory/numberOfPlayer";
import module namespace m = "memory/main" at "main.xqm";

(: open database blackjack, locate resource within database and navigate to its top element :)
declare variable $p:casino := db:open("blackjack")/casino;

(: Gamescreen with 16 Cards :)
declare function p:numberOfCards2($statusOpen as xs:boolean, $visibility as xs:boolean,) as element(cards16) {
  
  return
        <Card>
            <id>1</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>2</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>3</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>4</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>5</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>6</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>7</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>8</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>9</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>10</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>11</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>12</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>13</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>14</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>15</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>16</id>
            <StatusOpen>{$statusOpen}</StatusOpen>
            <Visibility>{$visibility}</Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
};  
  
  
  
  
  
  
  
 <Card>
            <id>1</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>2</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>3</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>4</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>5</id>
            <StatusOpen> 0 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>6</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>7</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>8</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>25</YCoordinate>
        </Card>
        <Card>
            <id>9</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>10</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>11</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>12</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>13</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>14</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>15</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>16</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>40</YCoordinate>
        </Card>
        <Card>
            <id>17</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>18</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>19</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>20</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>21</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>22</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>23</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>55</YCoordinate>
        </Card>
        <Card>
            <id>24</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>55</YCoordinate>
            <fill> hotpink </fill>
        </Card>
        <Card>
            <id>25</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>20</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>26</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>40</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>27</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>60</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>28</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>80</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>29</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>100</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>30</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>120</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>31</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>140</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>
        <Card>
            <id>32</id>
            <StatusOpen> 1 </StatusOpen>
            <Visibility> 1 </Visibility>
            <XCoordinate>160</XCoordinate>
            <YCoordinate>70</YCoordinate>
        </Card>